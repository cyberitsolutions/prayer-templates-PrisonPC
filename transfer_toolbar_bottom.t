%# $Cambridge: hermes/src/prayer/templates/cam/transfer_toolbar_bottom.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $

<form method="post" action="<% upload_select |s %>"
      enctype="multipart/form-data">
<table class="banner" cellpadding="0">
<tr>
<td class="nav_l">
File: 
<input type="file" name="file" size="40" />
<input type="submit" value="Upload" /></td>
<td class="nav_r">
<a href="<% folders |s %>">Cancel</a>&nbsp;|&nbsp;\
<a href="<% dir_check/transfer |s %>">Refresh</a>
</td>
</tr></table>
</form>
