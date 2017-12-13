%# $Cambridge: hermes/src/prayer/templates/cam/display_toolbar.t,v 1.3 2010/07/08 16:05:45 dpc22 Exp $
%#
<table class="banner" cellpadding="0">
<tr>
<td class="nav_l">
% IFDEF $g_use_icons
%   CALL display_toolbar_icons
% ELSE
%   CALL display_toolbar_noicons
% ENDIF
|
<a href="<% "copy/${nav->cur_msg}/${nav->cur_uid}" |s %>">
Copy</a> |
% IFDEF $nav->deleted
<a href="<% disp_undelete/${nav->cur_msg}/${nav->cur_uid} |s %>">
Undelete</a> |
% ELSE
<a href="<% disp_delete/${nav->cur_msg}/${nav->cur_uid} |s %>">
Delete</a> |
% ENDIF
% IFDEF $use_persist
%   IFDEF $nav->marked
<a href="<% disp_unmark/${nav->cur_msg}/${nav->cur_uid} |s %>">
Unmark</a>|
%   ELSE
<a href="<% disp_mark/${nav->cur_msg}/${nav->cur_uid} |s %>">
Mark</a>|
%   ENDIF
% ENDIF
<a href="<% reply/${nav->cur_msg}/${nav->cur_uid} |s %>">
Reply</a> |
<a href="<% forward/${nav->cur_msg}/${nav->cur_uid} |s %>">
Forward</a>
% IFDEF $is_postponed_folder
|
<a href="<% resume/${nav->cur_msg}/${nav->cur_uid} |s %>">
Resume</a>
% ENDIF
</td>
<td class="nav_c">
<strong><% "Message: $nav->cur_msg out of $nav->msg_count" |h %></strong>
</td></tr>
</table>
