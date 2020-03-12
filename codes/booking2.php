 <?php
       
        
        $con = mysqli_connect('localhost','root','');
        
        
        
        if(!$con){
            echo 'not connected to server';
        }
        if(!mysqli_select_db($con,'hireme')){
            
            echo 'database not selected';
        }
          $mail = $_POST['mail'];
          $carname= $_POST['carN'];
          $pickup = $_POST['pick'];
          $drop = $_POST['drop'];
         $date = $_POST['cal'];
          $license = $_POST['image'];
          $day = $_POST['days'];

          $sql = "INSERT INTO booking2 ( email, car_name, pickup_station, preferable_station, preferable_date, how_many_days,license_photo ) VALUES ('$mail','$carname','$pickup','$drop','$date','$day','$license')";

        if(!mysqli_query($con,$sql)){
            echo 'not inserted';
        }
        else{
            echo 'inserted';
        }
        
        header("refresh:10; url=booking.php");
         

        ?>