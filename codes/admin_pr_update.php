<html>
    <head>
        <title>HireMe.com</title>
        
       
        
        <link href="style.css" rel="stylesheet" type ="text/css">
       
        
    </head>
    <body>
        <header>
            <div class="row">
                <div class="logo"><img src="logo.png">
                </div>
            
               <ul class= "reg-nav">
                 
                      <li ><a href="http://localhost/hiremefinal/ADMIN_LOGIN.PHP"> LOG OUT </a></li>
                     </ul>
                
                
            <ul class= "main-nav">
                <li ><a href="http://localhost/hiremefinal/hireme__admin.php"> HOME </a></li> 
                <li><a href="http://localhost/hiremefinal/admin_booking.php"> BOOKING SEARCH</a></li> 
                <li><a href="http://localhost/hiremefinal/admin_pr_update.php"> PRICING CAR UPDATE </a></li>
                <li><a href="http://localhost/hiremefinal/packing.php"> PACKAGE CAR UPDATE </a></li> 
                <li><a href="http://localhost/hiremefinal/Business_Term.php"> BUSINESS TERM SEARCH</a></li>  
                
                </ul>
                
            
            </div>
            </header>
        
        
        
        
            <?php
            //connect with my sql
            $con= mysqli_connect('localhost','root','');
            //select database
            mysqli_select_db($con, 'hireme');
            
            //select query
            $sql= "select * from pricing";
            
            //execute the query
            $records= mysqli_query($con,$sql);
            
            ?>
        
        <table>
            <tr>
            <th>car_number</th>
            <th>car_name</th>
            <th>daily_car_rent_inside_dhaka</th>
            <th>daily_car_rent_outside_dhaka</th>
            <th>hourly_car_rent</th>
            <th>weekly_car_rent</th>
            <th>monthly_car_rent</th>
            <th>fuel_cost</th>
            </tr>
            
            <?php
            while($row = mysqli_fetch_array($records)){
                
                echo"<tr><form action=update.php method= post>";
                
                echo"<td><input type=text name=carnu value='".$row['car_number']."'></td>";
                    
                    echo"<td><input type=text name=carna value='".$row['car_name']."'></td>";
                
                    echo"<td><input type=text name=dayin value='".$row['daily_car_rent_inside_dhaka']."'></td>";
                    
                    echo"<td><input type=text name=dayout value='".$row['daily_car_rent_outside_dhaka']."'></td>";
                    
                    echo"<td><input type=text name=hour value='".$row['hourly_car_rent']."'></td>";
                    
                    echo"<td><input type=text name=week value='".$row['weekly_car_rent']."'></td>";
                    
                    echo"<td><input type=text name=month value='".$row['monthly_car_rent']."'></td>";
                    
                    echo"<td><input type=text name=fuel value='".$row['fuel_cost']."'></td>";
                
                echo "<td><input type= submit>";
                echo "</form></tr>";
            }
            
            ?>
            
            
        </table>
            
            
    
        
        
        
        
    </body>

</html>
