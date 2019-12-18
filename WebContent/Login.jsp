<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login.jsp</title>
<script>
function validation()
{      var name =document.getElementById("name").value;
	   var email= document.getElementById("emailid").value;
	   var pass= document.getElementById("password").value;
	   var status=isNameValidate(name);	   
	   if(status)
	   {
		 var isEmail= isEmailValidate(email)  
	     if(isEmail)
		  { 
		       var ispass=isPasswordValidate(pass)
                if(ispass)	
                {
                     return true;  	
         		}
         		else
         		{
         	 		return false;
         		}
		  }		
	   	else 
		  {
		 	  return false;
 		 }
	 } 	   
	   
	    function isNameValidate(name)
	    {
	    	 if(name=='')
	           {
	    		 document.getElementById("name").innerHTML="invalid username";
	    		 return false;
	           }
	    	 else
	    		 { return true; }
	    }
	   
	   function isEmailValidate(email)
	   {
		    if(email=='')
		    {
		    	document.getElementById("email").innerHTML="invalid emailid";
		    	return false;
		    }
		    else
		    	{
		    	 return true;
		    	}
	   }
	   
	   function isPasswordValidate(pass)
	   {
		   if(pass=='')
			{
			   document.getElementById("password").innerHTML="invalid password";	
			   return false;
			}
		   else
		   {
			     return true;
		   }
	   }
}
 </script>
 
 <style>
 .c1
{ 
   border:solid; 
   width:180px;
   height:30px;
   padding-bottom:30px;
 
   margin-top:30px;
   margin-bottom:50px;
}
.div{
	display:flex;
	justify-content:center;
	
}
 </style>
 </head>
<body class="div">
<form action="LoginServlet" method="post" onsubmit="return validation()" style="border:solid black ;width:300px; height:450px;" align="center";>
	<div align="center">
	
	
	
	    <div class="c1">
			Name :<input type="text" name="name" placeholder="Enter user name" id="name">
			<span id="uname" style="color:red;margin-top:30px;"></span>
		</div>
	
	
		<div class="c1">
			EmaiID :<input type="email" name="email" placeholder="Enter Email id" id="emailid">
			<span id="email" style="color:red;margin-top:30px;"></span>
		</div>
		<div class="c1">
			Password:<input type="password" name="password" placeholder="Enter pssword" id="password">
		    <span id="passwordspan" style="color:red;"></span>
		</div>
		<button type="submit" style="background-color:light-blue; width:200px; hight:20px;"><p style="color:red">Login</p></button>
		
	</div>
</form>
</body>
</html>