%# $Cambridge: hermes/src/prayer/templates/cam/tb_icon_form.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%# Arguments:
%#  $_cmd      Command
%#  $_icon     Icon name
%#  $_alt      Alt text for icon
%#
% IFDEF $g_use_icons
%   IFEQ $g_cmd $_cmd
<td align="center" valign="top">
 <img src="<% ${_icon}-inactive |i %>" alt="<% $_alt |h %>" /></td>
%   ELSE
<td align="center" valign="top">
 <input type="image" src="<% $_icon |i %>" alt="<% $_alt |h %>"
        name="sub_<% $_cmd |n %>" />
</td>
%   ENDIF
% ELSE
%   IFEQ $g_cmd $_cmd
<td align="center"><% $_alt |h %></td>
%   ELSE
<td align="center">
 <input type="submit" value="<% $_alt |h %>" name="sub_<% $_cmd |n %>" /></td>
%   ENDIF
% ENDIF

