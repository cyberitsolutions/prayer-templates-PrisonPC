%# $Cambridge: hermes/src/prayer/templates/cam/abook_lookup_nav_1_noicons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->first_page
<td><a href="<% abook_lookup/${nav->first_page} |s %>">First</a></td>
% ELSE
<td>First</td>
% ENDIF
<td>|</td>
% IFDEF $nav->prev_page
<td><a href="<% abook_lookup/${nav->prev_page} |s %>">Previous</a></td>
% ELSE
<td>Previous</td>
% ENDIF
<td>|</td>
% IFDEF $nav->next_page
<td><a href="<% abook_lookup/${nav->next_page} |s %>">Next</a></td>
% ELSE
<td>Next</td>
% ENDIF
<td>|</td>
% IFDEF $nav->last_page
<td><a href="<% abook_lookup/${nav->last_page} |s %>">Last</a></td>
% ELSE
<td>Last</td>
% ENDIF
