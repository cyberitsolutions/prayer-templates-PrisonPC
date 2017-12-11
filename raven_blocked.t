%# $Cambridge: hermes/src/prayer/templates/cam/raven_blocked.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h1>Raven logins not allowed</h1>

<p>Raven logins have been disabled for this account. You will need to log
in using the normal <% $g_service_name |h %> username and password</p>

<p><a href="<% $url_prefix |n %>/login/<% $username |u %>">Click here</a>
to return to the login screen</p>
% CALL container_end
% CALL footer

