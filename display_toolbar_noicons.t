%# $Cambridge: hermes/src/prayer/templates/cam/display_toolbar_noicons.t,v 1.2 2010/07/08 16:05:45 dpc22 Exp $
%#
% IFDEF $nav->prev_msg
<a href="<% ${g_cmd}/${nav->prev_msg}/${nav->prev_uid} |s %>"><button type=button>Previous</button></a>
% ELSE
Previous
% ENDIF
% IFDEF $nav->next_msg
<a href="<% ${g_cmd}/${nav->next_msg}/${nav->next_uid} |s %>"><button type=button>Next</button></a>
% ELSE
Next
% ENDIF
