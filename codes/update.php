<?php
            //connect with my sql
            $con= mysqli_connect('localhost','root','');
            //select database
            mysqli_select_db($con, 'hireme');
            
            //update query
            $sql= "update pricing set car_number='$_POST[carnu]',car_name='$_POST[carna]',daily_car_rent_inside_dhaka= '$_POST[dayin]',daily_car_rent_outside_dhaka= '$_POST[dayout]',hourly_car_rent= '$_POST[hour]',weekly_car_rent= '$_POST[week]',monthly_car_rent= '$_POST[month]', fuel_cost= '$_POST[fuel]' where car_number='$_POST[carnu]'";
            
            //execute the query
            if(mysqli_query($con,$sql))
            {
                header("refresh:1; url=admin_pr_update.php");
            }
            else{
                echo "not updated";
            }
            
            ?>










         
        