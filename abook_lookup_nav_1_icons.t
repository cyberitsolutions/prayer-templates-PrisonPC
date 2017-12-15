%# $Cambridge: hermes/src/prayer/templates/cam/abook_lookup_nav_1_icons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->first_page
<td><a href="<% abook_lookup/${nav->first_page} |s %>">
 <img src="<% ic_first_page |i %>" alt="First" /></a></td>
% ELSE
<td><img src="<% ic_first_page_inactive |i %>" alt="First" /></td>
% ENDIF
% IFDEF $nav->prev_page
<td><a href="<% abook_lookup/${nav->prev_page} |s %>">
 <img src="<% ic_chevron_left |i %>" alt="Previous" /></a></td>
% ELSE
<td><img src="<% ic_chevron_left_inactive  |i %>" alt="Previous" /></td>
% ENDIF
% IFDEF $nav->next_page
<td><a href="<% abook_lookup/${nav->next_page} |s %>">
 <img src="<% ic_chevron_right |i %>" alt="Next" /></a></td>
% ELSE
<td><img src="<% ic_chevron_right_inactive |i %>" alt="Next" /></td>
% ENDIF
% IFDEF $nav->last_page
<td><a href="<% abook_lookup/${nav->last_page} |s %>">
 <img src="<% ic_last_page |i %>" alt="Last" /></a></td>
% ELSE
<td><img src="<% ic_last_page_inactive |i %>" alt="Last" /></td>
% ENDIF
