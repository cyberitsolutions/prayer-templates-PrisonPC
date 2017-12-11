%# $Cambridge: hermes/src/prayer/templates/cam/search_status.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL search_header, $_type => "Status"
<table><tr><td>
<select name="status_op" size="1">
<option value="seen">Seen (read)</option>
<option value="unseen">Unseen</option>
<option value="deleted">Deleted</option>
<option value="undeleted">Not Deleted</option>
<option value="answered">Answered</option>
<option value="unanswered">Not Answered</option>
</select></td></tr></table>
% CALL search_footer
% IFDEF $g_help
%   CALL search_status_help
% ENDIF
% CALL container_end
% CALL footer
