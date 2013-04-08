%# $Cambridge: hermes/src/prayer/templates/cam/filter.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Automatic Mail Filtering</h2>
% IFDEF $filters[0]
<ol>
%   FOREACH $f @filters
<li>
  <strong><% $f->type_strong |h %>:</strong>
  Filter messages with <% $f->type |h %> of "<% $f->value |h %>".
  <a href="<% filter/remove/${f->offset} |s %>">Remove this filter.</a>
  <ul>
    <li>Store in mail folder: <% ${f->mailbox|7} |h %></li>
%     IFDEF $f->copy
    <li>Copy message to inbox</li>
%     ENDIF
  </ul>
</li>
%   ENDFOREACH
</ol>
% ELSE
<p>No filter actions defined at the current time</p>
% ENDIF
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% filter |s %>">
<table>
<tr>
<td>
<select name="type" size="1">
<option value="sender">Filter on Sender:</option>
<option value="recipient">Filter on Recipient:</option>
<option value="subject">Filter on Subject:</option>
</select>
</td>
<td><input name="param" value="" size="40" /></td>
<td><input type="submit" name="sub_add" value="Add filter" /></td>
</tr></table>
<table><tr>
<td><input type="submit" name="sub_cancel" value="Back to Options Screen" /></td>
</tr></table>
</form>
% IFDEF $g_help
%   CALL filter_help
% ENDIF
% CALL container_end
% CALL footer
