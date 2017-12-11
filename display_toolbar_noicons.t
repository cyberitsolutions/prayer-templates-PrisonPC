%# $Cambridge: hermes/src/prayer/templates/cam/display_toolbar_noicons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $nav->prev_msg
<a href="<% display/${nav->prev_msg}/${nav->prev_uid} |s %>">Previous</a>
% ELSE
Previous
% ENDIF
|
% IFDEF $nav->next_msg
<a href="<% display/${nav->next_msg}/${nav->next_uid} |s %>">Next</a>
% ELSE
Next
% ENDIF
