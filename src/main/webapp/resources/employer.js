function validation()
{
	var CompName = $("#companyname");
	if(CompName.val().length < 3)
	{
		alert("Please provide at least 3 chars");
		return false;
	}
	
	var phonenum = $("#phonenumber");
	if(phonenum.val().length != 10)
    {
		alert("Invalid Phone number")
		return false;
	}
	return true;
}