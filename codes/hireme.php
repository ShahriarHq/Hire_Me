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
                     <li ><a href="http://localhost/hiremefinal/ADMIN_LOGIN.PHP"> ADMIN LOG IN </a></li>
                    <li ><a href="#"> /  </a></li>
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
            
            <img class="mySlides" src="img_snowtops.jpg">
<img class="mySlides" src="3.jpg">
<img class="mySlides" src="2.jpg">
<img class="mySlides" src="1.jpg">
            
            <button class="left" onclick="plusDivs(-1)">&#10094;</button>
<button class="right" onclick="plusDivs(+1)">&#10095;</button>
            
      
            <script>    
            var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
    showDivs(slideIndex += n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("mySlides");
    if (n > x.length) {slideIndex = 1} 
    if (n < 1) {slideIndex = x.length} ;
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none"; 
    }
    x[slideIndex-1].style.display = "block"; 
};
        
   </script>       
        
        </header>
        
        
        
    </body>

</html>
