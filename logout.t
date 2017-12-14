%# $Cambridge: hermes/src/prayer/templates/cam/logout.t,v 1.5 2009/01/13 16:16:16 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h2 style="text-align: center">
Confirm logout from <% $g_service_name |h %> Email Service</h2>
<div class="confirm">
<p style="text-align: center">
<a href="<% $cancel |s %>"><button type="button">Cancel</button></a>
<a href="<% exit |s %>"><button type="button">Logout</button></a>
</p>
% IFDEF $g_have_draft
<br style="clear:both;" />
<table>
<tr>
 <td><b>Warning:</b></td>
 <td>Draft message currently active</td>
</tr>
<tr>
 <td>&nbsp;</td>
 <td>This message will be discarded if you exit now</td>
</tr>
</table>
% ENDIF
</div>
% CALL container_end
% CALL footer

