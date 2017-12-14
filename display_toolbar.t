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
<a href="<% "copy/${nav->cur_msg}/${nav->cur_uid}" |s %>">
<button type="button">Copy</button></a>
% IFDEF $nav->deleted
<a href="<% disp_undelete/${nav->cur_msg}/${nav->cur_uid} |s %>">
<button type="button">Undelete</button></a>
% ELSE
<a href="<% disp_delete/${nav->cur_msg}/${nav->cur_uid} |s %>">
<button type="button">Delete</button></a>
% ENDIF
% IFDEF $use_persist
%   IFDEF $nav->marked
<a href="<% disp_unmark/${nav->cur_msg}/${nav->cur_uid} |s %>">
<button type="button">Unmark</button></a
%   ELSE
<a href="<% disp_mark/${nav->cur_msg}/${nav->cur_uid} |s %>">
Mark</a>|
%   ENDIF
% ENDIF
<a href="<% reply/${nav->cur_msg}/${nav->cur_uid} |s %>">
<button type="button">Reply</button></a>
<a href="<% forward/${nav->cur_msg}/${nav->cur_uid} |s %>">
<button type="button">Forward</button></a>
% IFDEF $is_postponed_folder
|
<a href="<% resume/${nav->cur_msg}/${nav->cur_uid} |s %>">
<button type="button">Resume</button></a>
% ENDIF
</td>
<td class="nav_c">
<strong><% "Message: $nav->cur_msg out of $nav->msg_count" |h %></strong>
</td></tr>
</table>
