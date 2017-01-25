function validation()
{
	var firstName = $("#fname");
	//var firstName = document.getElementById("fn");
	if(firstName.val().length < 3)
	{
		alert("First name should be at least 3 char");
		return false;
	}
	
	var lastName = $("#lname");
	//var lastName = document.getElementById("ln");
	if (lastName.val().length < 1) 
	{
        alert("LastName must be filled out");
		return false;
    }
	
	var address = $("#address");
	if(address.val().length < 10)
	{
		alert("Please provide the correct Address");
		return false;
	}
	
	var zipcode = $("#Zipcode");
	if(zipcode.val().length != 5)
	{
		alert("Zipcode is not valid");
		return false;
	}
	
	var phonenum = $("#phonenumber");
	if(phonenum.val().length != 10)
    {
		alert("Invalid Phone number")
		return false;
	}
	
	var highestDegree = $("#HighestDegree");
	if(highestDegree.val().length < 4)
	{
		alert("Please write in ex:MSCS (or) MSITS")
		return false;
	}
	
	var workExp = $("#workexperience1");
	if(workExp.val().length < 10)
	{
		alert("Please provide your work experience");
		return false;
	}
	
	var skills1 = $("#skills");
	if(skills1.val() < 10)
	{
		alert("please provide at least 3 skills");
		return false;
	}
	
	var relocation = $("#Re-Location");
	if(relocation.val().length < 2)
	{
		alert("Yes (or) No");
		return fasle;
	}	
	return true;
}