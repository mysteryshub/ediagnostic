function checkempty(data)
{
	if(data.length==0)
		{
		return false;
		}
	return true;
	}
function checklength(data)
{
	if(data.length<=6)
		{
		return false;
		}
	return true;
	}
function checkCombo(nm)
	{
		if(nm=="default")
			{
			return false;
			}
		return true;
		}
function chkcheckbox(chkarr)
{
	var flag=0;
	for(i=0;i<chkarr.lenght;i++)
		{
		if(chkarr[i].checked)
			{
			flag=1;
			break;
			}
		}
	if(flag==0)
		{
		return false;
		}
	else 
		return true;
}	
function main()
{
	 var userid=document.getElementById("txtuserid").value;
	 var userpass=document.getElementById("txtuserpass").value;
	 
	 	 if(checkempty(userid)==false)
		 {
		 alert("userid required");
		 document.getElementById("txtuserid").focus();
		 return false;
		 }
	 if(checkempty(userpass)==false) 
	 {
	 alert("userpass required");
	 document.getElementById("txtuserpass").focus();
	 return false;
	 }
	 return true;
	 
}