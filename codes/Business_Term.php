<html>
    <head>
        <title>HireMe/Regestration.com</title>
        
        <link href="style1.css" rel="stylesheet" type ="text/css">
       
        
    </head>
    <body>
        
        
        <!---bar part--->
        
        <header>
            <div class="row">
                <div class="logo"><img src="logo.png">
                </div>
            
                 <ul class= "reg-nav">
                 <li ><a href="http://localhost/hiremefinal/login.php"> LOG IN </a></li>
                      <li ><a href="#"> /  </a></li>
                      <li ><a href="http://localhost/hiremefinal/signin.php"> SIGN IN </a></li>
                     </ul>
                
            <ul class= "main-nav">
                <li ><a href="http://localhost/hiremefinal/hireme.php"> HOME </a></li> 
                <li><a href="http://localhost/hiremefinal/pricing.php"> PRICING </a></li> 
                <li><a href="http://localhost/hiremefinal/packing.php"> PACKAGE </a></li>
                <li><a href="http://localhost/hiremefinal/tourism.php"> TOURISM </a></li> 
                <li><a href="http://localhost/hiremefinal/Business_Term.php"> BUSINESS TERM </a></li> 
                <li><a href=""> INFORMATION </a></li> 
                <li><a href=""> REVIEW </a></li> 
                <li><a href=""> CONTACT US </a></li> 
                <li><a href=""> ABOUT US </a></li> 
                
                </ul>
                
            
            </div>
        
        
        
        </header>
        
        
       <!---business term part--->
        
        
        
         <div class="BTbox">
    <img src="avatar2.png" class="avatar2">
        <h1>Regester Here</h1>
             
        <form action="Business_Term2.php" method="post">
            <p>Car Name</p>
            <input type="text" name="name" placeholder="Enter First Name">
            <p>Car Model</p>
            <input type="text" name="model" placeholder="Enter Last Name">
            <p>Email</p>
            <input type="email" name="mail" placeholder="Enter Email">
            <p>License Number</p>
            <input type="text" name="number" placeholder="Enter license Number">
            <p>Fitness Certificate</p>
            <input type="file" name="image" placeholder="">
           
            <input type="submit" name="" value="Submit">
            
        </form>
        
    </div>

</body>

</html>
