%# $Cambridge: hermes/src/prayer/templates/cam/transfer_toolbar_top.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $

<form method="post" accept-charset="UTF-8"
      enctype="multipart/form-data" action="<% transfer |s %>">
<table class="banner" cellpadding="0">
<tr>
<td class="nav_r">
<a href="<% folders |s %>">Cancel</a>&nbsp;|&nbsp;\
<a href="<% dir_check/transfer |s %> ">Refresh</a>
</td>
</tr></table>
</form>
