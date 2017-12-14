%# $Cambridge: hermes/src/prayer/templates/cam/compose.t,v 1.2 2010/07/02 16:14:30 dpc22 Exp $
%#
% CALL header
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% compose |s %>">
%   CALL compose_toolbar
%   CALL container_start
%   CALL status
%   CALL compose_small_top
<div>
%# NOTE: compose area default size is now hard-coded here
%# (132x25 - the same as a "wide" terminal)
<textarea name="body" cols="132" rows="25" style="max-width:100%"><% $body |h %></textarea>
</div>
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
%# ALWAYS save a copy (FCC) to "sent-mail" folder.
<input type="hidden" name="copy_outgoing" value="1" />
</tr></table>
% IFDEF $g_help
%     CALL compose_small_help
% ENDIF
% CALL container_end
</form>
% CALL footer

