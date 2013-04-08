%# $Cambridge: hermes/src/prayer/templates/cam/toolbar_right.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<table>
<tr>
% IFDEF $g_help
% CALL tb_icon, $_cmd => "help/$g_cmd",
%               $_icon => "back", $_alt => "Back"
% ELSE
% CALL tb_icon, $_cmd => "help/$g_cmd", $_icon => "help", $_alt => "Help"
% ENDIF
<td></td>
% CALL tb_icon, $_cmd => "logout/$g_cmd", $_icon => "logout", $_alt => "Logout"
</tr>
% IFDEF $g_use_icons
<tr>
%   IFDEF $g_help
<td align="center" valign="top">Back</td>
%   ELSE
<td align="center" valign="top">Help</td>
%   ENDIF
<td>|</td>
<td align="center" valign="top">Logout</td>
</tr>
% ENDIF
</table>
