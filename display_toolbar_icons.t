%# $Cambridge: hermes/src/prayer/templates/cam/display_toolbar_icons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->prev_msg
<a href="<% display/${nav->prev_msg}/${nav->prev_uid} |s %>">
 <img src="<% left |i %>" alt="Previous" /></a>
% ELSE
<img src="<% left-inactive  |i %>" alt="Previous" />
% ENDIF
% IFDEF $nav->next_msg
<a href="<% display/${nav->next_msg}/${nav->next_uid} |s %>">
 <img src="<% right |i %>" alt="Next" /></a>
% ELSE
<img src="<% right-inactive |i %>" alt="Next" />
% ENDIF
