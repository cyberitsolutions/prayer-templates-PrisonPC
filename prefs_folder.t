%# $Cambridge: hermes/src/prayer/templates/cam/prefs_folder.t,v 1.4 2008/09/29 07:31:55 dpc22 Exp $
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
<td><input type="submit" name="sub_compose1" value="Compose" /></td>
<td><input type="submit" name="sub_compose2" value="Extra Compose" /></td>
<td class="active"><input type="submit" name="sub_folder" value="Folder" /></td>
</tr>
</table>
<input type="hidden" name="type" value="folder" />
<h3>Folder Listing Preferences:</h3>
<table>
<tr>
<td><input type="checkbox" name="suppress_dotfiles" value="1"
% IFDEF $suppress_dotfiles
 checked="checked"
% ENDIF
/></td>
<td>Suppress dotfiles (files starting '.') from folder listing</td>
</tr>
<tr>
<td><input type="checkbox" name="confirm_rm" value="1"
% IFDEF $confirm_rm
 checked="checked"
% ENDIF
/></td>
<td>Confirm folder deletion</td>
</tr>
</table>
<table>
<tr>
<td>Mail directory:</td>
<td><input name="maildir" value="<% $maildir |h %>" size="20" /></td>
</tr>
<tr>
<td>Sent Mail Folder:</td>
<td><input name="sent_mail_folder"
           value="<% $sent_mail_folder |h %>" size="20" /></td>
</tr>
<tr>
<td>Postponed Messages Folder:</td>
<td><input name="postponed_folder"
           value="<% $postponed_folder |h %>" size="20" /></td>
</tr>
</table>
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
%   CALL prefs_folder_help
% ENDIF
% CALL container_end
% CALL footer
