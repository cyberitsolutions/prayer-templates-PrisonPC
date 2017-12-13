%# $Cambridge: hermes/src/prayer/templates/cam/frontend_compose_timeout.t,v 1.4 2008/10/14 08:07:08 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h3>Couldn't connect to session. Maybe it timed out?</h3>

<p>Copy the following somewhere safe before logging in again.</p>

<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% ${url} |n %>">
<div>
<table cellspacing="0" cellpadding="0">
<tr>
<td>To:</td>
<td><input name="hdr_To" value="<% $hdr_to |h %>" size="70" /></td>
</tr>
<tr>
<td>Cc:</td>
<td><input name="hdr_Cc" value="<% $hdr_cc |h %>" size="70" /></td>
</tr>
<tr>
<td>Subject:</td>
<td><input name="hdr_Subject" value="<% $hdr_subject |h %>" size="70" /></td>
</tr>
</table>

<textarea name="body" cols="80" rows="24"><% $body |h %>
</textarea>
</div>
</form>

<p><a href="<% $url_prefix |n %>/login/<% $user |u %>">\
Click here to login again</a></p>
% CALL container_end
% CALL footer
