%# $Cambridge: hermes/src/prayer/templates/cam/toolbar_left.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<table>
<tr>
% CALL tb_icon, $_cmd => "display", $_icon => "display", $_alt => "Message"
<td></td>
% CALL tb_icon, $_cmd => "list", $_icon => "mailbox", $_alt => "Mailbox"
<td></td>
% CALL tb_icon, $_cmd => "folders", $_icon => "folders", $_alt => "Folders"
<td></td>
% CALL tb_icon, $_cmd => "compose", $_icon => "compose", $_alt => "Compose"
<td></td>
% CALL tb_icon, $_cmd => "abook_list", $_icon => "addressbook", $_alt => "Addressbook"
<td></td>
% CALL tb_icon, $_cmd => "manage", $_icon => "manage", $_alt => "Manage"
</tr>
% IFDEF $g_use_icons
<tr>
<td align="center" valign="top">Message</td>
<td>|</td>
<td align="center" valign="top">Mailbox</td>
<td>|</td>
<td align="center" valign="top">Folders</td>
<td>|</td>
<td align="center" valign="top">Compose</td>
<td>|</td>
<td align="center" valign="top">Addressbook</td>
<td>|</td>
<td align="center" valign="top">Manage</td>
</tr>
% ENDIF
</table>
