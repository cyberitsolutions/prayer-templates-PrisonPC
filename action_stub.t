%# $Cambridge: hermes/src/prayer/templates/cam/action_stub.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Help Text: Action stub</h2>

That was just a help text example.
<br />
<a href="<% $last_command |s %>">Go back to help page</a>
% CALL container_end
% CALL footer
