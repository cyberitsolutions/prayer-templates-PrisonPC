%# $Cambridge: hermes/src/prayer/templates/cam/list_title.t,v 1.4 2008/09/29 12:08:52 dpc22 Exp $
%#
<thead>
<tr>
<th align="right">
 <a href="<% list_sort/arrival |s %>">#\
% CALL sort_icon, $_value => "arrival"
</a></th>
<th align="center">
% IFDEF $page_all_marked
%   IFDEF $g_use_icons
  <a href="<% list/unmark |s %>"><img src="<% ic_check_box_outline_blank |i %>" alt="None" /></a>
%   ELSE
  <a href="<% list/unmark |s %>">None</a>
%   ENDIF
% ELSE
%   IFDEF $g_use_icons
  <a href="<% list/mark |s %>"><img src="<% ic_check_box |i %>" alt="All" /></a>
%   ELSE
  <a href="<% list/mark |s %>">All</a>
%   ENDIF
% ENDIF
</th>
% IFDEF $g_use_icons
<th align="center">\
<img src="<% ic_mail_outline |i %>" alt="Status" /></th>
% ELSE
<th align="center">D</th>
<th align="center">N</th>
<th align="center">A</th>
% ENDIF
<th align="left"><a href="<% list_sort/date |s %>">Date\
% CALL sort_icon, $_value => "date"
</a></th>
<th align="left"><a href="<% list_sort/from |s %>">From\
% CALL sort_icon, $_value => "from"
</a></th>
<th align="right"><a href="<% list_sort/size |s %>">Size\
% CALL sort_icon, $_value => "size"
</a></th>
<th align="left"><a href="<% list_sort/subject |s %>">Subject\
% CALL sort_icon, $_value => "subject"
</a></th>
<th align="right">
 <a href="<% list_sort/references |s %>">Thread\
% CALL sort_icon, $_value => "references"
</a></th>
</tr>
</thead>
