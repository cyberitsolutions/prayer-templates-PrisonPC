%# $Cambridge: hermes/src/prayer/templates/cam/restart.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
<h2 style="text-align: center">Mailbox access error</h2>
% CALL status
% IFDEF $raven_token
<p>If your Raven session timed out you will need to Logout and reconnect</p>
% ENDIF
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% restart |s %>">
<input type="submit" name="exit" value="Logout" />
<input type="submit" name="reopen" value="Reopen current mailbox" />
<input type="submit" name="folders" value="List folders" />
</form>
% CALL container_end
% CALL footer
