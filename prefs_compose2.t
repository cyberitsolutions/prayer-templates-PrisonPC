%# $Cambridge: hermes/src/prayer/templates/cam/prefs_compose2.t,v 1.5 2010/11/01 10:57:05 dpc22 Exp $
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
<td class="active"><input type="submit" name="sub_compose2" value="Extra Compose" /></td>
<td><input type="submit" name="sub_folder" value="Folder" /></td>
</tr>
</table>
<input type="hidden" name="type" value="compose2" />
<h3>Extra Compose Preferences:</h3>
<table>
<tr>
<td><input type="checkbox" name="use_sent_mail" value="1"
% IFDEF $use_sent_mail
 checked="checked"
% ENDIF
/></td>
<td>Use sent-mail folder</td>
</tr>
% IFDEF $have_aspell_path
<tr><td><input type="checkbox" name="spell_skip_quoted" value="1"
% IFDEF $spell_skip_quoted
 checked="checked"
% ENDIF
/></td>
<td>Skip quoted text on spell check</td></tr>
% ENDIF
<tr>
<td><input type="checkbox" name="line_wrap_on_reply" value="1"
% IFDEF $line_wrap_on_reply
 checked="checked"
% ENDIF
/></td>
<td>Line wrap on reply</td>
</tr><tr>
<td><input type="checkbox" name="line_wrap_on_spell" value="1"
% IFDEF $line_wrap_on_spell
 checked="checked"
% ENDIF
/></td>
<td>Line wrap on spell check</td>
</tr><tr>
<td><input type="checkbox" name="line_wrap_on_send" value="1"
% IFDEF $line_wrap_on_send
 checked="checked"
% ENDIF
/></td>
<td>Line wrap on send</td>
</tr><tr>
<td><input type="checkbox" name="line_wrap_advanced" value="1"
% IFDEF $line_wrap_advanced
 checked="checked"
% ENDIF
/></td>
<td>Enable manual line wrap options</td>
</tr></table>
<table>
<tr><td>Line Wrap at:</td>
<td><input name="line_wrap_len"
           value="<% $line_wrap_len |h %>" size="3" />columns</td></tr>
<tr><td>Normal Compose window size:</td>
<td><input name="small_cols"
           value="<% $small_cols |h %>" size="3" />columns</td>
<td><input name="small_rows"
           value="<% $small_rows |h %>" size="3" /> rows
</td></tr>
<tr><td>Large Compose window size</td>
<td><input name="large_cols"
           value="<% $large_cols |h %>" size="3" />columns</td>
<td><input name="large_rows"
           value="<% $large_rows |h %>" size="3" />rows</td>
</tr>
% IFDEF $domains[1]
<tr><td>Default domain:</td>
<td><select name="default_domain" size="1">
%   FOREACH $d @domains
<option value="<% $d->name |n %>"\
%     IFEQ $d->name $default_domain
 selected="selected" \
%     ENDIF
><% $d->name |h %>
</option>
%   ENDFOREACH
</select></td>
</tr>
% ENDIF
% IFDEF $langs[0]
<tr><td>Spell Check Language:</td>
<td><select name="ispell_language" size="1">
%   FOREACH $l @langs
<option value="<% $l->name |n %>"\
%     IFEQ $l->name $ispell_language
 selected="selected" \
%     ENDIF
><% $l->desc |h %>
</option>
%   ENDFOREACH
</select></td>
</tr>
% ENDIF
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
%   CALL prefs_compose2_help
% ENDIF
% CALL container_end
% CALL footer
