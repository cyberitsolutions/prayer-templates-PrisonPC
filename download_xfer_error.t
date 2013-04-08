%# $Cambridge: hermes/src/prayer/templates/cam/download_xfer_error.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2>Download Error:</h2>

<p>Mailbox size <% $size |h %> MBytes exceeds
   maximum <% $limit |h %> MBytes allowed for transfer.
<p>Please split the mailbox into sections and try again. 
<p><a href="<% transfer |s %>">Back to transfer screen</a>
% CALL container_end
% CALL footer
