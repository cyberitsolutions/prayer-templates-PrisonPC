%# $Cambridge: hermes/src/prayer/templates/cam/attachments.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% IFDEF $atts[0]
<h2 style="text-align: center">MIME Attachments</h2>
<table>
%   FOREACH $a @atts
<tr>
 <td align="right"><% $a->offset |h %>.</td>
 <td><% $a->name |h %> (<% $a->size |h %> bytes) of type <% $a->type |h %></td>
 <td><a href="<% detach/${a->offset} |s %>">Detach</a></td>
</tr>
%   ENDFOREACH
</table>
<hr />
% ENDIF
<h3>Attach file:</h3>
<form method="post" action="<% attachments |s %>"
 enctype="multipart/form-data">
<div>
 File <input type="file" name="file" size="40" />
 <input type="submit" value="Attach File" />
</div>
</form>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% attachments/cancel |s %>">
<div>
 <input type="submit" name="sub_cancel" value="Back to Compose Screen" />
</div>
</form>
% IFDEF $g_help
%   CALL attachments_help
% ENDIF
% CALL container_end
% CALL footer
