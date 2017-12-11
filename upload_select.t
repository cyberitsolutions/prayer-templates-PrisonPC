%# $Cambridge: hermes/src/prayer/templates/cam/upload_select.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Upload local folder "<% $upload_name |h %>" as folder</h2>
<hr />
% CALL folderlist, $cmd => "upload_select"
<hr />
<form method="post" accept-charset="UTF-8"
      enctype="multipart/form-data" action="<% upload_xfer |s %>">
Upload folder under <select name="parent" size="1">
<option value=""><% "<Root>" |h %></option>
% FOREACH $i @dirlist
<option value="<% $i->name |c %>"><% $i->name |h %></option>
% ENDFOREACH
</select>
with name:<input name="name" value="<% $upload_name |h %>" size="40" />
<input type="submit" name="create" value="Create" />
<input type="submit" name="append" value="Append" />
<input type="submit" name="cancel" value="Cancel" />
</form>
% IFDEF $g_help
%   CALL upload_select_help
% ENDIF
% CALL container_end
% CALL footer
