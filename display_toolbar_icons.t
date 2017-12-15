%# $Cambridge: hermes/src/prayer/templates/cam/display_toolbar_icons.t,v 1.2 2010/07/08 16:05:45 dpc22 Exp $
%#
% IFDEF $nav->prev_msg
<a href="<% ${g_cmd}/${nav->prev_msg}/${nav->prev_uid} |s %>">
 <img src="<% ic_chevron_left |i %>" alt="Previous" /></a>
% ELSE
<img src="<% ic_chevron_left_inactive  |i %>" alt="Previous" />
% ENDIF
% IFDEF $nav->next_msg
<a href="<% ${g_cmd}/${nav->next_msg}/${nav->next_uid} |s %>">
 <img src="<% ic_chevron_right |i %>" alt="Next" /></a>
% ELSE
<img src="<% ic_chevron_right_inactive |i %>" alt="Next" />
% ENDIF
