%# $Cambridge: hermes/src/prayer/templates/cam/folders_toolbar.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% create/folders |s %>">
<table class="banner" cellpadding="0">
<tr>
%# XXX DPC: Why doesn't <td class="nav"> work correctly here?
<td>
% CALL folderlist_select
</td>
<td class="nav_r">
<a href="<% dir_check/folders |s %>">Refresh</a>&nbsp;|&nbsp;\
<a href="<% sizes |s %>">Sizes</a>&nbsp;|&nbsp;\
<a href="<% favourites |s %>">Favourite Folders</a>
</td>
</tr></table>
</form>
