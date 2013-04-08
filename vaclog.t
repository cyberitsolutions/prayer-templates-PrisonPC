%# $Cambridge: hermes/src/prayer/templates/cam/vaclog.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Vacation log </h2>
<pre>
<% $vaclog |h %>
</pre>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% vaclog |s %>">
<input type="submit" name="sub_back" value="Back to Options Screen" />
<input type="submit" name="sub_clear" value="Clear vacation log" />
</form>
% IFDEF $g_help
%   CALL vaclog_help
% ENDIF
% CALL container_end
% CALL footer
