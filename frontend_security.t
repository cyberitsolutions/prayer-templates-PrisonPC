%# $Cambridge: hermes/src/prayer/templates/cam/frontend_security.t,v 1.2 2008/10/02 07:01:56 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h2>Security Alert</h2>

<p>Login request did not come from
  <a href = "<% $url_prefix |n %>"><% $url_prefix |h %></a></p>

% CALL container_end
% CALL footer
