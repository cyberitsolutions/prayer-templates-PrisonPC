%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_nav_1_icons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->first_page
<a href="<% abook_list/${nav->first_page} |s %>">
 <img src="<% leftleft |i %>" alt="First" /></a>
% ELSE
<img src="<% leftleft-inactive |i %>" alt="First" />
% ENDIF
% IFDEF $nav->prev_page
<a href="<% abook_list/${nav->prev_page} |s %>">
 <img src="<% left |i %>" alt="Previous" /></a>
% ELSE
<img src="<% left-inactive  |i %>" alt="Previous" />
% ENDIF
% IFDEF $nav->next_page
<a href="<% abook_list/${nav->next_page} |s %>">
 <img src="<% right |i %>" alt="Next" /></a>
% ELSE
<img src="<% right-inactive |i %>" alt="Next" />
% ENDIF
% IFDEF $nav->last_page
<a href="<% abook_list/${nav->last_page} |s %>">
 <img src="<% rightright |i %>" alt="Last" /></a>
% ELSE
<img src="<% rightright-inactive |i %>" alt="Last" />
% ENDIF
