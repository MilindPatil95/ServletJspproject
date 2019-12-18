<!DOCTYPE html>
<html>
<head>
<title>Login Form</title>
<script>
   function validation()
   {
	   var email= document.getElementById("emailid").value;
	   if(email=="")
		{
		   document.getElementById("email").innerHTML="invalid emailid";
		   return false;
	    }
   }
 </script>

</head>
<body>
<form action="PasswordChangeServlet" method="post" onsubmit="return validation()">
	<div align="center" >
		<div class ="c1">
			EmaiID :<input type="text" placeholder="Enter Email id" id="emailid" name="email">
			<span id="email"></span>
		</div >
		<div class ="c1"> 
		   new Password:<input type="password" placeholder="Enter pssword" name="pass">
		</div>
		
		
		<div></div>
		<button type="submit" style="background-color:light-blue" class ="c1"><p style="color:red">Login</p></button>
	</div>
</form>
</body>
</html>