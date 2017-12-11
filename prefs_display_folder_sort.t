%# $Cambridge: hermes/src/prayer/templates/cam/prefs_display_folder_sort.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<tr><td>Default folder sort mode:</td>
<td><select name="folder_sort_mode" size="1">
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "arrival", $_desc => "Arrival"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "date", $_desc => "Date"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "from", $_desc => "From"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "to", $_desc => "To"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "to", $_desc => "To"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "cc", $_desc => "Cc"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "size", $_desc => "Size"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "subject", $_desc => "Subject"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "references", $_desc => "Thread (References)"
% CALL prefs_option, $_current => $folder_sort_mode,
%  $_value => "orderedsubject", $_desc => "Thread (Ordered Subject)"
</select></td>
</tr>
