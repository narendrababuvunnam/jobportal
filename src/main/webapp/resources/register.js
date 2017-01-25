function validation()
{
	var email = $("#email");
	if(email.val().indexOf("@") < 0)
	{
		alert("Invalid email @ is missing");
		return false;
	}
	
	if(email.val().indexOf(".") < 0)
	{
		alert("invalid email");
		return false;
	}
	
	var password1 = $("#password");
	//var firstName = document.getElementById("fn");
	if(password1.val().length < 6)
	{
		alert("minimum 6 Characters Should provide");
		return false;
	}
	
	var password2 = $("#re-enterpassword");
	if(password2.val() != password1.val())
	{
		alert("password doesn't match");
		return false;
	}
	return true;
	
}

