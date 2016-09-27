function CheckRegisterForm()
{
var uid=document.forms["register"]["uid"].value;
var password=document.forms["register"]["password"].value;
var uname=document.forms["register"]["uname"].value;
var email=document.forms["register"]["email"].value;
var mobile=document.forms["register"]["mobile"].value;
var addr=document.forms["register"]["addr"].value;

if (uid==null || uid=="")
{
    alert("User ID can't be blank");
    return false;
    
}
 if(password==null || password=="")
 {
     alert("Password can't be blank");
     return false;
     
 }
 if(password.length<6)
 {
     alert("password should be equal to six charater or more");
 }
 if(uid.length<6)
 {
     alert("user ID should be equal to six charater or more");
     
 }
 
  if(uname==null  || uname =="")
 {
     alert("User Name can't be blank");
     return false;
     
 }
 
  if(email==null || email=="")
 {
     alert("Email ID can't be blank");
     return false;
     
 }
 
  if(mobile==null || mobile=="")
 {
     alert("Mobile can't be blank");
     return false;
     
 }
  if(addr==null || addr=="")
 {
     alert("Address can't be blank");
     return false;
     
 }

}




