<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script LANGUAGE="JavaScript">
function getParams(){
var idx = document.URL.indexOf('?');
var params = new Array();
if (idx != -1) {
var pairs = document.URL.substring(idx+1, document.URL.length).split('&');
for (var i=0; i<pairs.length; i++){
nameVal = pairs[i].split('=');
params[nameVal[0]] = nameVal[1];
}
}
return params;
}
params = getParams();
Line1= unescape(params["Line1"]);
Line2= unescape(params["Line2"]);
City= unescape(params["City"]);
State = unescape(params["State"]);
Country= unescape(params["Country"]);
document.write("firstname = " + firstname + "<br>");
document.write("lastname = " + lastname + "<br>");
document.write("age = " + age + "<br>");
</script>
</body>
</html>