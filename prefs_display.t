%# $Cambridge: hermes/src/prayer/templates/cam/prefs_display.t,v 1.3 2008/09/20 09:33:23 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Display Preferences</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% prefs |s %>">
<div>
<input type="hidden" name="type" value="display" />
<table>
<tr>
<td><input type="checkbox" name="use_icons" value="1"
% IFDEF $use_icons
 checked="checked"
% ENDIF
/></td>
<td>Use icons</td>
</tr>
<tr>
<td><input type="checkbox" name="use_tail_banner" value="1"
% IFDEF $use_tail_banner
 checked="checked"
% ENDIF
/></td>
<td>Duplicate icons below message</td>
</tr>
<tr>
<td><input type="checkbox" name="html_inline" value="1"
% IFDEF $html_inline
 checked="checked"
% ENDIF
/></td>
<td>Display text/html sections inline. </td>
</tr>
<tr>
<td><input type="checkbox" name="html_inline_auto" value="1"
% IFDEF $html_inline_auto
 checked="checked"
% ENDIF
/></td>
<td>Display text/* sections starting &lt;html&gt; inline</td>
</tr>
<tr>
<td><input type="checkbox" name="html_remote_images" value="1"
% IFDEF $html_remote_images
 checked="checked"
% ENDIF
/></td>
<td>Display remote images in HTML e-mail</td>
</tr>
<tr>
<td><input type="checkbox" name="preserve_mimetype" value="1"
% IFDEF $preserve_mimetype
 checked="checked"
% ENDIF
/></td>
<td>Preserve MIME type when downloading attachments</td>
</tr>
<tr>
<td><input type="checkbox" name="use_unread" value="1"
% IFDEF $use_unread
 checked="checked"
% ENDIF
/></td>
<td>Start at first unread message</td>
</tr>
</table>
<table>
% CALL prefs_display_folder_sort
<tr>
<td>Messages per page:</td>
<td><input name="msgs_per_page" value="<% $msgs_per_page |h %>" size="5" /></td>
</tr>
% CALL prefs_display_abook_sort
<tr>
<td>Addressbook entries per page:</td>
<td><input name="abook_per_page" value="<% $abook_per_page |h %>" size="5" /></td>
</tr>
<tr>
<td>Alt Addresses:</td>
<td><input name="alt_addr" value="<% $alt_addr |h %>" size="40" /></td>
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
%   CALL prefs_display1_help
% ENDIF
% CALL container_end
% CALL footer
