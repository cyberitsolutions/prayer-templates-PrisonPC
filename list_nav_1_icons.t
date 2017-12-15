%# $Cambridge: hermes/src/prayer/templates/cam/list_nav_1_icons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->first_msg
<a href="<% list/${nav->first_msg}/${nav->first_uid} |s %>">
 <img src="<% ic_first_page |i %>" alt="First" /></a>
% ELSE
<img src="<% ic_first_page_inactive |i %>" alt="First" />
% ENDIF
% IFDEF $nav->prev_msg
<a href="<% list/${nav->prev_msg}/${nav->prev_uid} |s %>">
 <img src="<% ic_chevron_left |i %>" alt="Previous" /></a>
% ELSE
<img src="<% ic_chevron_left_inactive  |i %>" alt="Previous" />
% ENDIF
% IFDEF $nav->next_msg
<a href="<% list/${nav->next_msg}/${nav->next_uid} |s %>">
 <img src="<% ic_chevron_right |i %>" alt="Next" /></a>
% ELSE
<img src="<% ic_chevron_right_inactive |i %>" alt="Next" />
% ENDIF
% IFDEF $nav->last_msg
<a href="<% list/${nav->last_msg}/${nav->last_uid} |s %>">
 <img src="<% ic_last_page |i %>" alt="Last" /></a>
% ELSE
<img src="<% ic_last_page_inactive |i %>" alt="Last" />
% ENDIF
