%# $Cambridge: hermes/src/prayer/templates/cam/compose.t,v 1.2 2010/07/02 16:14:30 dpc22 Exp $
%#
% CALL header
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% compose |s %>">
% IFDEF $large
%   CALL container_start
%   CALL compose_large_top
<div>
<textarea name="body" cols="<% $large_cols |h %>"
 rows="<% $large_rows |h %>"><% $body |h %>
</textarea>
</div>
% ELSE
%   CALL compose_toolbar
%   CALL container_start
%   CALL status
%   CALL compose_small_top
<div>
<textarea name="body" cols="<% $small_cols |h %>"
 rows="<% $small_rows |h %>"><% $body |h %></textarea>
</div>
% ENDIF
<table cellspacing="0" cellpadding="0"><tr>
<td><input type="submit" name="sub_spell" value="Check Spelling" /></td>
% IFDEF $line_wrap_advanced
<td><input type="submit" name="sub_line_wrap" value="Line Wrap" /></td>
%   IFDEF $line_wrap
<td><input type="checkbox" name="line_wrap" value="1" checked="checked" /></td>
%   ELSE
<td><input type="checkbox" name="line_wrap" value="1" /></td>
%   ENDIF
<td>Line Wrap on Send</td>
% ENDIF
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type="submit" name="sub_cancel" value="Cancel" /></td>
<td><input type="submit" name="sub_postpone" value="Postpone" /></td>
<td><input type="submit" name="sub_send" value="Send" /></td>
% IFDEF $copy_outgoing
<td><input type="checkbox" name="copy_outgoing" value="1" checked="checked" /></td>
% ELSE
<td><input type="checkbox" name="copy_outgoing" value="1" /></td>
% ENDIF
<td>Save copy</td>
</tr></table>
% IFDEF $g_help
%   IFDEF $large
%     CALL compose_large_help
%   ELSE
%     CALL compose_small_help
%   ENDIF
% ENDIF
% CALL container_end
</form>
% CALL footer

