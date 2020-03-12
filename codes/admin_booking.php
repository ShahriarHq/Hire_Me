<?php
mysql_connect("localhost","root","") or die("could_no_connect");
mysql_select_db("hireme") or die("could_not_find_db!");

$output ='';
$count = '';

if(isset($_POST['search'])){
    $searchq = $_POST['search'];
    $searchq = preg_replace("#[^0-9a-z@.]#i","",$searchq);
    
    $query = mysql_query("SELECT * from booking2 WHERE email LIKE '%$searchq%'") or die(" couldnot search");
    $count = mysql_num_rows($query);
    
    if($count== 0){
        $output = 'there was no search result';
    }
    else{
       while($row = mysql_fetch_array($query)){
        $id = $row['id'];
           $email=$row['email'];
       $carname=$row['car_name'];
       $pickup=$row['pickup_station'];
        $dropd=$row['preferable_station'];
        $date=$row['preferable_date'];
        $day= $row['how_many_days'];
           $license= $row['license_photo'];
           
           $output .='<div>'.$id.'  '.$email.'   '.$carname.'   '.$pickup.'   '.$dropd.' '.$date.'   '.$day.'   '.$license.'</div>';
           
       } 
        
    }
    
    
}

?>


<!DOCTYPE html>
<html>
    <head>
        <title>HireMe.com</title>
       
        
        <link href="style.css" rel="stylesheet" type ="text/css">
        
       
        
    </head>
    <body>
        
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
            
           
         <form action="admin_booking.php" method="post">

        BOOKING SEARCH:<input type="text" name="search" placeholder="search"><br/><br/>

            

        <input type="submit"  value="Find"/>
             
             <?php print("$output");?>

           </form>

    </body>

</html>
