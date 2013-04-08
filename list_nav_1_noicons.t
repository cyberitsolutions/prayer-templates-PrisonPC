%# $Cambridge: hermes/src/prayer/templates/cam/list_nav_1_noicons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->first_msg
<a href="<% list/${nav->first_msg}/${nav->first_uid} |s %>">First</a>
% ELSE
First
% ENDIF
|
% IFDEF $nav->prev_msg
<a href="<% list/${nav->prev_msg}/${nav->prev_uid} |s %>">Previous</a>
% ELSE
Previous
% ENDIF
|
% IFDEF $nav->next_msg
<a href="<% list/${nav->next_msg}/${nav->next_uid} |s %>">Next</a>
% ELSE
Next
% ENDIF
|
% IFDEF $nav->last_msg
<a href="<% list/${nav->last_msg}/${nav->last_uid} |s %>">Last</a>
% ELSE
Last
% ENDIF
