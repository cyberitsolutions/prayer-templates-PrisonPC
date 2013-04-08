%# $Cambridge: hermes/src/prayer/templates/cam/prefs_display_abook_sort.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<tr><td>Addressbook sort mode:</td>
<td><select name="abook_sort_mode" size="1">
% CALL prefs_option, $_current => $abook_sort_mode,
%  $_value => "order", $_desc => "Order"
% CALL prefs_option, $_current => $abook_sort_mode,
%  $_value => "alias", $_desc => "Alias"
% CALL prefs_option, $_current => $abook_sort_mode,
%  $_value => "name", $_desc => "Name"
% CALL prefs_option, $_current => $abook_sort_mode,
%  $_value => "comment", $_desc => "Comment"
% CALL prefs_option, $_current => $abook_sort_mode,
%  $_value => "email", $_desc => "Address"
</select></td>
</tr>
