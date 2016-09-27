function CheckLoginForm()
{
var uid=document.forms["login"]["uid"].value;
var password=document.forms["login"]["password"].value;

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
 
}
