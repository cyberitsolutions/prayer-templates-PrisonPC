%# $Cambridge: hermes/src/prayer/templates/cam/frontend_timeout.t,v 1.3 2008/10/14 08:07:08 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h3>Couldn't connect to session. Maybe it timed out?</h3>

<p><a href="<% $url_prefix |n %>/login/<% $user |u %>">\
Click here to login again</a></p>
% CALL container_end
% CALL footer
