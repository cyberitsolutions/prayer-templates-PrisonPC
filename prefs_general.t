%# $Cambridge: hermes/src/prayer/templates/cam/prefs_general.t,v 1.3 2008/09/20 09:33:23 dpc22 Exp $
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
<td class="active"><input type="submit" name="sub_general" value="General" /></td>
<td><input type="submit" name="sub_display" value="Display" /></td>
<td><input type="submit" name="sub_compose1" value="Compose" /></td>
<td><input type="submit" name="sub_compose2" value="Extra Compose" /></td>
<td><input type="submit" name="sub_folder" value="Folder" /></td>
</tr>
</table>
<input type="hidden" name="type" value="general" />
<h3>General Preferences:</h3>
<table>
<tr>
<td>Template Set:</td>
<td><select name="template_set" size="1">
% FOREACH $t @templates
%   IFEQ $t->name $template_set
<option value="<% $t->name |h %>" selected="selected"><% $t->fullname |h %></option>
%   ELSE
<option value="<% $t->name |h %>"><% $t->fullname |h %></option>
%   ENDIF
% ENDFOREACH
</select></td>
</tr>
</table>
<table>
<tr>
<td><input type="checkbox" name="use_welcome" value="1"
% IFDEF $use_welcome
 checked="checked"
% ENDIF
/></td>
<td>Enable welcome screen</td>
</tr>
% IFDEF $raven_enable
<tr>
<td><input type="checkbox" name="allow_raven_login" value="1"
%   IFDEF $allow_raven_login
 checked="checked"
%   ENDIF
/></td>
<td>Allow Raven logins</td>
</tr>
% ENDIF
<tr>
<td><input type="checkbox" name="confirm_expunge" value="1"
% IFDEF $confirm_expunge
 checked="checked"
% ENDIF
/></td>
<td>Confirm expunge</td>
</tr>
<tr>
<td><input type="checkbox" name="confirm_logout" value="1"
% IFDEF $confirm_logout
 checked="checked"
% ENDIF
/></td>
<td>Confirm logout</td>
</tr>
<tr>
<td><input type="checkbox" name="expunge_on_exit" value="1"
% IFDEF $expunge_on_exit
 checked="checked"
% ENDIF
/></td>
<td>Expunge deleted messages from INBOX on logout</td>
</tr>
<tr>
<td><input type="checkbox" name="use_mark_persist" value="1"
% IFDEF $use_mark_persist
 checked="checked"
% ENDIF
/></td>
<td>Use persistent marks (slower, sometimes useful)</td>
</tr>
<tr>
<td><input type="checkbox" name="use_search_zoom" value="1"
% IFDEF $use_search_zoom
 checked="checked"
% ENDIF
/></td>
<td>&nbsp;&nbsp;&nbsp;- Zoom automatically after search</td>
</tr>
<tr>
<td><input type="checkbox" name="use_agg_unmark" value="1"
% IFDEF $use_agg_unmark
 checked="checked"
% ENDIF
/></td>
<td>&nbsp;&nbsp;&nbsp;- Unmark messages after aggregate operation</td>
</tr>
</table>
<br />
<table><tr>
<td><input type="submit" name="sub_cancel" value="Cancel" /></td>
<td><input type="submit" name="sub_change" value="Change for this session" /></td>
<td><input type="submit" name="sub_save" value="Change for this and future sessions" /></td>
</tr></table>
</div>
</form>
% IFDEF $g_help
%   CALL prefs_general_help
% ENDIF
% CALL container_end
% CALL footer
