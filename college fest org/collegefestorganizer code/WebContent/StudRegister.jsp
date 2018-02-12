<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students...register here!</title>
<script type="text/javascript">
function isInteger()
{
var s=regForm.contactno.value;+
	 var i;
	  s = s.toString();
	  //mobile number consists of 10 numbers
	  if(s.length==10)
	  {
	      for (i = 0; i < s.length; i++)
		  {
			 var c = s.charAt(i);
	         if (isNaN(c)) 
		     {
				alert("Please provide valid mobile number");
				return false;
		       }
		  }
	   }
	   else
	   {
				alert("Please provide valid mobile number");
				return false;
	   }
	   //mobile number is valid
	  mobilevalidate=1;
     return true;
}
function valid()
{
	 if(regForm.uname.value=="")
	 {
	 	alert("UserName Must be entered");
	 	return false;
	 }
	 else if(regForm.pwd.value=="")
	 {
	 	alert("password Must be entered");
	 	return false;
	 }
	 else if(regForm.studname.value=="")
	 {
	 	alert("StudentName Must be entered");
	 	return false;
	 }
	 else if(regForm.coll.value=="")
	 {
	 	alert("College Name Must be entered");
	 	return false;
	 }
	 else if(regForm.branch.value=="")
	 {
	 	alert("College Name Must be entered");
	 	return false;
	 }else if(regForm.coll.value=="")
	 {
		 	alert("College Name Must be entered");
		 	return false;
		 }else if(regForm.branch.value=="")
		 {
			 	alert("Branch Name Must be entered");
			 	return false;
			 }else if(regForm.contactno.value=="")
			 {
				 	alert("ConTACT NO Must be entered");
				 	return false;
				 }else if(regForm.emailid.value=="")
				 {
					 	alert("Email ID Must be entered");
					 	return false;
					 }
		 
	 
	 return true;
	}
</script>
</head>
<body>
<jsp:include page="include.jsp"></jsp:include>
<form name="regForm" method="post" action="StudRegisterForm.jsp" onSubmit="return valid()" >
<table width="60%" align="center">
<tr><td colspan="3" align="center"><font color="red"><b>NOTE : </b></font><font color="green"><b>Student's  ID to be entered as UserName!</b></font></td></tr>
<tr><td align="right"><b>*UserName</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="uname"></td></tr>
<tr><td align="right"><b>*Password</b></td><td align="center"><b>:</b></td><td><input type="password" align="left" width="30" name="pwd"></td></tr>
<tr><td align="right"><b>*StudentName</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="studname"></td></tr>
<tr><td align="right"><b>*College</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="coll" ></td></tr>
<tr><td align="right"><b>Branch</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="branch"></td></tr>

<tr><td align="right"><b>*ContactNo</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="contactno" onBlur="javascript:isInteger()"></td></tr>
<tr><td align="right"><b>*EmailID</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="emailid"></td></tr>
<tr><td align="right"><b>Are you a Volunteer?</b></td><td align="center"><b>:</b></td><td><input type="radio" name="vol" value="Yes">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="vol" value="No">No</td></tr>
<tr><td colspan="3" align="center"><input type="submit" value="Submit" width="30"></td></tr>
</table>
</form>
<h3 align="center">* all fields are manditory</h3>

</body>
</html>