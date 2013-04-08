%# $Cambridge: hermes/src/prayer/templates/cam/sieve.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<form method="post" action="<% sieve/upload |s %>"
      enctype="multipart/form-data">
<h2 style="text-align: center">Sieve Filtering</h2>
<div>
Either:
<ul>
<li><a href="<% sieve/download |S %>">Download current sieve file</a></li>
<li>Upload a new sieve file:
 <input type="file" name="file" size="40" />
 <input type="submit" value="Upload" />
</li>
</ul>
</div>
</form>
<div>
or update sieve file directly here:
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% sieve |s %>">
<div>
<textarea name="script" rows="<% $rows |h %>"
 cols="<% $cols |h %>"><% $script |h %></textarea>
<table>
<tr>
<td><input type="submit" name="sub_cancel" value="Back to Manage screen" /></td>
<td><input type="submit" name="sub_apply" value="Apply" /></td>
</tr>
</table>
</div>
</form>
</div>
% IFDEF $g_help
%   CALL sieve_help
% ENDIF
% CALL container_end
% CALL footer
