%# $Cambridge: hermes/src/prayer/templates/cam/rename_toolbar.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% rename_item |s %>">
<table style="width: 100%"><tr class="t_banner">
<td>
<table><tr><td>
Rename under <select name="parent" size="1">
<option value=""><% "<Root>" |h %></option>
% FOREACH $i @dirlist
<option value="<% $i->name |c %>"><% ${i->name|7} |h %></option>
% ENDFOREACH
</select>
as new name <input name="name" value="" size="16" />
<input type="submit" name="submit" value="Rename" />
<input type="submit" name="cancel" value="Cancel" />
</td></tr></table>
</td></tr></table>
</form>
