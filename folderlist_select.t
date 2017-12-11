%# $Cambridge: hermes/src/prayer/templates/cam/folderlist_select.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $g_dualuse
Create mailbox
% ELSE
Create
<select name="type" size="1">
<option value="mailbox" selected="selected">mailbox</option>
<option value="directory">directory</option>
</select>
% ENDIF
under <select name="parent" size="1">
<option value=""><% "<Root>" |h %></option>
% FOREACH $i @dirlist
<option value="<% $i->name |c %>"><% ${i->name|7} |h %></option>
% ENDFOREACH
</select>
with name
<input name="name" />
<input type="submit" name="create" value="Create" />
