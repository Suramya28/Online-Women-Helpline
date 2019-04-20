<%-- 
    Document   : register
    Created on : Mar 20, 2015, 3:10:13 AM
    Author     : lenovo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
         <style type="text/css">
               
            
           h2
           {
               font-family: Arial;
               font-style: oblique;
               color:crimson;
               
               
           }
           #div1
    { 
            border-color: white;
            border-style: solid;

    
    
            background-color:crimson;
                
            width: 100% ;
            height: 20% ;
     }
     
        
        </style> </head>
    
       
<body bgcolor="pink">


<div id=div1>
 <font style="color: white; font-family:Comic Sans MS  ;text-align:right ;font-size:large; word-spacing: 5px; outline-color: red; outline-width: thin; margin-right: 2px">
<h1>
<center>REGISTRATION</center>
</h1>
</font>
</div>
   <script type="text/javascript">
        function my_fun()
        {
            var name=document.getElementById("unm");
            var pswrd=document.getElementById("pwd");
            if(name.value=="")
                {
                    alert("You have not entered the name");
                    mypwd.focus();
                    return false;
                }
            
       
        
            <form action="Regis" method="post">
                <center> <table>
                     <caption align="top"><marquee><h2>User Information</h2></marquee></caption>
                    
                    
                    <tr><th><h1>Name:</h1></th><td> <input type="text" size="20"id="unm" name="nm" placeholder="Enter the name" name></td></tr><br>
 
   <tr><th><h1>Password:</h1></th><td> <input type="text" size="8"id="pwd" name="pass" placeholder="Enter the password" password></td></tr><br>
                
                <tr><th><h1> State:</h1></th><td> <select name="state" >
            <option value="UP" >Uttar Pradesh</option>
            <option value="MP" >Madhya Pradesh</option>
            <option value="H" >Himachal Pradesh</option>
            <option value="UP" >Haryana</option>
            <option value="UP" >Uttar pradesh</option>
            <option value="UP" >Uttar Pradesh</option>
           
                        </select><br></td></tr><br>
                <tr><th><h1> City:</h1></th><td> <select name="city" >
            
           <option value="V" > Varanasi</option>
           <option value="L" > Lucknow</option>
           <option value="K" > Kanpur </option>
           <option value="V" > Allahabad</option>
           <option value="V" > Delhi</option>
          
          <tr><th><h1>Contact no:</h1></th><td> <input type="text" size="20"id="uno" name="num" placeholder="Enter the contact no." name></td></tr><br>  
<tr><th><input type="submit" value="submit" style="background-color:burlywood; color:brown" > <th></tr>
                    </table></center>
</body>
          
              
    </center>
</html>
