%# $Cambridge: hermes/src/prayer/templates/cam/reply.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Reply Options</h2><table>
<tr>
 <td><strong>Sender:</strong></td>
 <td><% $sender |h %></td>
</tr>
<tr>
 <td><strong>Recipients:</strong></td>
 <td><% $recipients |h %></td>
</tr>
<tr>
 <td><strong>Subject:</strong></td>
 <td><% $subject |h %></td>
</tr>
</table>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% reply1 |s %>">
<div>
<input type="submit" name="single" value="Reply to sender only" />
<input type="submit" name="all" value="Reply to sender and all recipients" />
</div>
</form>
% IFDEF $g_help
%   CALL reply_help
% ENDIF
% CALL container_end
% CALL footer
