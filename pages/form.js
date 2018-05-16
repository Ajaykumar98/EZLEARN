function validateemail()
{
	var emailid=document.rform.email.value;
	atpos = emailid.indexOf("@");
 	dotpos = emailid.lastIndexOf(".");
 	if (atpos < 1|| dotpos<=atpos+2)
 	{
	 	alert("Please enter correct email id");
                  	 document.rform.email.focus();
 	 	return false;
 	}
	return true;

}
function validatepwd()
{
	var p1=document.rform.password.value;
	var p2=document.rform.cpassword.value;
	if(p1=="")
	{
		alert("Please enter your password");
		document.rform.password.focus();
		return false;
	}
	if(p2=="")
	{
		alert("Please re-enter your password");
	        document.rform.cpassword.focus();
		return false;
	}		
	if(document.rform.uname.value==p1)
	{
		alert("Your User name and password is same.Please enter another password");
		document.rform.password.focus();
		return false;
	}
	re=/[0-9]/;
	if(!re.test(p1))
	{
		alert("Please enter a password which contain atleast one number character");
		document.rform.password.focus();	
		return false;
	}
	re=/[A-Z]/;
	if(!re.test(p1))
	{
		alert("Please enter a password which contain atleast one uppercase character");
		document.rform.password.focus();	
		return false;
	}
	if(p1.length<6)
	{
		alert("Please enter a password which contain minimum 6 character");
		document.rform.password.focus();
		return false;
	}
	if(p1!=p2)
	{
		alert("Your password and confirm password didn't match.Please re-enter you confirm password");
		document.rform.cpassword.focus();
		return false;
	}
	return true;
}
function validate()
{
	if(document.rform.name.value=="")
	{
		alert("Please enter your name!");
		document.rform.name.focus();
		return false;
	}
	if(document.rform.dob.value=="")
	{
		alert("Please enter your date of birth!");
		document.rform.dob.focus();
		return false;
	}
	if(document.rform.age.value=="")
	{
		alert("Please enter your age!");
		document.rform.age.focus();
		return false;
	}	
	if(document.rform.email.value=="")
	{
		alert("Please enter your email id!");
		document.rform.email.focus();
		return false;
	}
	else
	{
		var result=validateemail();
		if(result==false)
		{
			return false;
		}
	}	
	if(document.rform.pnum.value==""||document.rform.pnum.value.length!=10)
	{
		alert("Please enter a valid phone number!");
		document.rform.pnum.focus();
		return false;
	}	
	if(document.rform.uname.value=="")
	{
		alert("Please enter your username!");
		document.rform.uname.focus();
		return false;
	}
	else
	{
		var result=validatepwd();
		if(result==false)
		{
			return false;
		}
	}
	return(true);
}