%# $Cambridge: hermes/src/prayer/templates/cam/include.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Include local file in message body</h2>
<form method="post" action="<% include |s %>" enctype="multipart/form-data">
<div>File
 <input type="file" name="file" size="40" />
 <input type="submit" value="Include" />
</div>
</form>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% include/cancel |s %>">
<div>
 <input type="submit" name="sub_cancel" value="Back to Compose Screen" />
</div>
</form>
% IFDEF $g_help
%   CALL include_help
% ENDIF
% CALL container_end
% CALL footer
