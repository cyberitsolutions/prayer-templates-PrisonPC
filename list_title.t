%# $Cambridge: hermes/src/prayer/templates/cam/list_title.t,v 1.4 2008/09/29 12:08:52 dpc22 Exp $
%#
<tr class="t_title">
<td style="width: 4%" class="right">
 <a href="<% list_sort/arrival |s %>">#\
% CALL sort_icon, $_value => "arrival"
</a></td>
<td style="width: 2%"> 
% IFDEF $page_all_marked
%   IFDEF $g_use_icons
  <a href="<% list/unmark |s %>"><img src="<% off |i %>" alt="None" /></a>
%   ELSE
  <a href="<% list/unmark |s %>">None</a>
%   ENDIF
% ELSE
%   IFDEF $g_use_icons
  <a href="<% list/mark |s %>"><img src="<% on |i %>" alt="All" /></a>
%   ELSE
  <a href="<% list/mark |s %>">All</a>
%   ENDIF
% ENDIF
</td>
% IFDEF $g_use_icons
<td style="width: 3%" align="center">\
<img src="<% msg-unseen |i %>" alt="Status" /></td>
% ELSE
<td style="width: 1%">D</td>
<td style="width: 1%">N</td>
<td style="width: 1%">A</td>
% ENDIF
<td style="width: 14%"><a href="<% list_sort/date |s %>">Date\
% CALL sort_icon, $_value => "date"
</a></td>
<td style="width: 25%"><a href="<% list_sort/from |s %>">From\
% CALL sort_icon, $_value => "from"
</a></td>
<td style="width: 5%"><a href="<% list_sort/size |s %>">Size\
% CALL sort_icon, $_value => "size"
</a></td>
<td style="width: 35%"><a href="<% list_sort/subject |s %>">Subject\
% CALL sort_icon, $_value => "subject"
</a></td>
<td style="width: 10%; text-align: right">
 <a href="<% list_sort/references |s %>">Thread\
% CALL sort_icon, $_value => "references"
</a></td>
</tr>
