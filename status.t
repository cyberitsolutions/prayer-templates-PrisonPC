%# $Cambridge: hermes/src/prayer/templates/cam/status.t,v 1.4 2008/09/17 16:44:23 dpc22 Exp $
%
% IFDEF $g_status
%   IFDEF $g_status_alert
<table id="status" class="alert">
%   ELSE
<table id="status" class="info">
%   ENDIF
<tr>
<td><b>Status:</b> <% ${g_status} |h %></td>
% ELSE
<table id="status" class="default">
<tr>
<td><b>Reminder:</b> Logout when you have finished.</td>
% ENDIF
% IFDEF $g_service_name
<td class="user">User currently logged into
 <% "$g_service_name : $g_user" |h %></td>
% else
<td align="user">User currently logged into Prayer: <% $g_user |h %></td>
% endif
</tr></table>
% IFDEF $g_help
%   IFDEF $g_help_toolbar
%     CALL toolbar_help
%   ELSE
%     CALL toolbar_stub_help
%   ENDIF
% ENDIF
