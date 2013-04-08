%# $Cambridge: hermes/src/prayer/templates/cam/frontend_login_error.t,v 1.3 2008/10/14 08:07:08 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h1>Login Failed</h1>
<hr />

% IFDEF $value
<b>Status:</b>
<% $value |h %>
<hr />
% ENDIF

% IFDEF $user
<p>Please <a href="<% $url_prefix |n %>/login/<% $user |u %>">\
try again</a></p>
% ELSE
<p>Please <a href="<% $url_prefix |n %>/">try again</a></p>
% ENDIF

% CALL container_end
% CALL footer
