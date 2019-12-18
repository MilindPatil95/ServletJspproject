<!DOCTYPE html>
<html>
<head>
<title>Home page</title>
<link rel="stylesheet" type="txt/css" href="Home.css">
<script>
   function validation(){
	  var name=document.getElementById("name").value;
	  var email=document.getElementById("email").value;
	  var password=document.getElementById("password").value;
	  var confmpass=document.getElementByID("confmpassword").value;
	 
	  
	  if(name=="")
		  {
		    document.getElementById("username").innerHTML="please fill this field";
	       	return false;
		  }
	    if(email=="")
	    	{
	    	 document.getElementById("emailid").innerHTML="please fill this field";
	    	 return false;
	    	}
	    
	     if(password=="")
	     {
	        document.getElementById("pass").innerHTML="please fill this field";	 
	        return false;
	     }
	     
	     if(!password.equals(confmpass))
	    	 {
	    	   document.getElementById("confpass").innerHTML="please fill this field";
	    	   return false;
	    	 }
   }
</script>

<style>
.c1
{ 
   border:solid; 
   width:200px;
   height:30px;
   padding-bottom:30px;
   margin-top:30px;
   margin-bottom:40px;
}
.div{
	display:flex;
	justify-content:center;
	
}
</style>
</head>
<body class="div">
<form  action="RegisterServlet" method="post" name="myForm" onsubmit="return validation()" style="border:solid black ;width:300px; height:500px;">
	<div align="center">
		 <div class="c1">
			<label>Name:</label> 
			<input type="text"  placeholder="User  full name" id="name" name="username" required="required" autocomplete="off">
		    <span id="username" style="color:red"> </span>
		</div>
		<div class="c1">
			<label>EmailID:</label> 
			<input type="email" placeholder="Email ID" id="email" name="emailid" required="required" autocomplete="off">
		     <span id="emailid" style="color:red"> </span>
		</div>
		<div class="c1">
			<label>PassWord:</label> 
			<input type="password"placeholder="Enter New password" id="password" name="upass" required="required" autocomplete="off">
			<span id="pass" style="color:red"> </span>
		</div>
		
      	<div class="c1">
			<label> confirm PassWord:</label>
			 <input type="password"placeholder="Enter Confirm password" id="confmpassword" name="confmpass" required="required" autocomplete="off">
			<span id="confpass" style="color:red"> </span>
		</div>
		 
     		
		
			<input type="submit" value="Register" id="submit" style="background-color:#4CAF50;color:white;width:200px;height:30px; font-size:20px;">
	</div>
	

</form>
</body>
</html>