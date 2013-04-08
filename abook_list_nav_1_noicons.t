%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_nav_1_noicons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->first_page
<a href="<% abook_list/${nav->first_page} |s %>">First</a>
% ELSE
First
% ENDIF
|
% IFDEF $nav->prev_page
<a href="<% abook_list/${nav->prev_page} |s %>">Previous</a>
% ELSE
Previous
% ENDIF
|
% IFDEF $nav->next_page
<a href="<% abook_list/${nav->next_page} |s %>">Next</a>
% ELSE
Next
% ENDIF
|
% IFDEF $nav->last_page
<a href="<% abook_list/${nav->last_page} |s %>">Last</a>
% ELSE
Last
% ENDIF
