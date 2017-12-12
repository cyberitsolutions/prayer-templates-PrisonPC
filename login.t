%# $Cambridge: hermes/src/prayer/templates/cam/login.t,v 1.4 2009/01/13 15:30:26 dpc22 Exp $
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"
lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/static/ppclayout.css" type="text/css" media="all" />
<link rel="icon" type="image/png"  href="/icons/msg-seen.png" />

<!-- change title and metadata for each page here -->
% IFDEF $g_service_name
<title><% $g_service_name |h %> Email Service</title>
% ELSE
<title>Prayer Email Service</title>
% ENDIF
<meta name="description" content="" />
<meta name="keywords" content="" />
<style type="text/css" title="text/css" media="all">
img.logo {padding:1em 1em 0 1em;}
label {font-weight: bold;}

form.lookup div div {border-top:none;}

table#login {padding:0; margin:0;}
table#login td {vertical-align: top; padding:0.15em 1.5em 0 0;
font-weight:bold; margin: 0.5em 0;}
table#login td label {font-size:0.9em;}
table#login td input {margin:0 0 0.5em 0;}
</style>
<script type="text/javascript">
 <!--
 var used = false; 
 function init(){
   if (self != top) top.location = self.location;
   if (!used) document.getElementById('credentials').username.focus();  }
 // -->
</script>
</head>
<body class="home" onload="init()">
<div id="skip"> <a
href="#skip-content" accesskey="2">Skip to content</a> </div>
<div id="header">
<div id="branding">
</div>
</div>
%
<div id="dept-title">
% IFDEF $login_banner
<h1><% $login_banner |h %></h1>
% ELSE
%   IFDEF $service_name
<h1><% $service_name |h %> Email Service</h1>
%   ELSE
<h1>Prayer Email Service</h1>
%   ENDIF
% ENDIF
</div>
%
<div id="container"> <a name="skip-content" id="skip-content"></a>
<div id="content">
  <div id="content-primary">
% IFDEF $ssl_available
<table>
<tr>
<td><strong>Warning:</strong></td><td>This is an insecure HTTP session.</td></tr>
<tr>
<td>&nbsp;</td>
<td>It is strongly recommended that you use SSL encryption if your browser supports it.
</td></tr>
<tr>
<td>&nbsp;</td>
<td><strong>
<a href="https://<% "${hostname}:${ssl_port}" |h %>">Click Here</a>
 for an SSL enabled login session.
</strong></td></tr>
</table>
% ENDIF
<form method="post" accept-charset="UTF-8" enctype="multipart/form-data"
      action="<% ${url_prefix} |n %>" class="lookup" id="credentials">
<fieldset>
<div>
<table id="login"><tr>
<td><label for="username">Username</label>
</td>
<td class="second">
<input id="username" name="username" value="<% $user |h %>" size="16"
       onfocus="used=true;" />
</td>
</tr><tr>
<td><label for="password">Password</label></td>
<td class="second">
<input type="password" id="password" name="password" size="16"
       onfocus="used=true;" />
 &nbsp;&nbsp;
<input type="submit" name="login" value="Login" /></td>
</tr></table>
</div>
</fieldset>
</form>
% IFDEF $motd
<% ${motd} |n %>
% ENDIF
</div>
</div>
</div>
</body></html>
