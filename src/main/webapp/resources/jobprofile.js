function validation()
{
	var jobid = $("#jobprofileID");
	if(jobid.val().length < 4)
	{
		alert("Please enter atleast 4 Chars");
		return false;
	}
	
	var jobtitle = $("#jobtitle");
	if(jobtitle.val().length < 8)
	{
		alert("Please enter at least 8 chars");
		return false;
	}
	
	var jobtype = $("#typeofjob");
	if(jobtype.val().length < 8)
	{
		alert("Fulltime/ partTime/ Contract");
		return false;
	}
	
	var description = $("#jobdescription");
	if(description.val().length < 10)
	{
		alert("Please provide Job Description");
		return false;
	}
	
	var Workauthorization = $("#workauthorization");
	if(Workauthorization.val().length < 2)
	{
		alert("please provide candidate authorization");
		return false;
	}
	
	var contact = $("#contactdetails") ;
	if(contact.val().length < 10)
	{
		alert("please enter your correct address");
		return false;
	}
	
	var postdate = $("#postedate");
	if(postdate.val().length < 10)
	{
		alert("please enter valid date");
		return false;
	}
}