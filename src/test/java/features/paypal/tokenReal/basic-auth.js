function(credentials)
{
var temp=credentials.username+':'+credentials.password;
var Base64=Java.type('java.util.Base64');
var Encoded=Base64.getEncoder().encodeToString(temp.toString().getBytes());
return 'Basic '+Encoded;
}
