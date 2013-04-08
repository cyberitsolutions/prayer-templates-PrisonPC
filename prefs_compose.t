%# $Cambridge: hermes/src/prayer/templates/cam/prefs_compose.t,v 1.3 2008/09/20 09:33:23 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Preferences</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% prefs |s %>">
<div>
<table id="prefs-tabbed">
<tr>
<td><input type="submit" name="sub_general" value="General" /></td>
<td><input type="submit" name="sub_display" value="Display" /></td>
<td class="active"><input type="submit" name="sub_compose1" value="Compose" /></td>
<td><input type="submit" name="sub_compose2" value="Extra Compose" /></td>
<td><input type="submit" name="sub_folder" value="Folder" /></td>
</tr>
</table>
<input type="hidden" name="type" value="compose1" />
<h3>Compose Preferences:</h3>
<table>
<tr>
<td>Personal Name:</td>
<td><input name="from_personal" value="<% $from_personal |h%>" size="40" /></td>
% IFDEF $default_from_personal
<td>Default: <% $default_from_personal |h %></td>
% ENDIF
</tr>
<tr>
<td>From Address:</td>
<td><input name="from_address" value="<% $from_address |h %>" size="40" /></td>
% IFDEF $default_from_address
<td>Default: <% $default_from_address |h %></td>
% ENDIF
</tr>
<tr>
<td>Default Reply-To:</td>
<td><input name="default_reply_to"
           value="<% $default_reply_to |h %>" size="40" /></td>
</tr>
</table>
<h3>Signature:</h3>
<textarea name="signature" cols="75" rows="4"><% $signature |h %></textarea>
<br />
<table><tr>
<td><input type="submit" name="sub_cancel"
           value="Cancel" /></td>
<td><input type="submit" name="sub_change"
           value="Change for this session" /></td>
<td><input type="submit" name="sub_save"
           value="Change for this and future sessions" /></td>
</tr></table>
</div>
</form>
% IFDEF $g_help
%   CALL prefs_compose1_help
% ENDIF
% CALL container_end
% CALL footer
