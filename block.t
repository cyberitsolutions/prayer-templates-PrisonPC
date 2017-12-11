%# $Cambridge: hermes/src/prayer/templates/cam/block.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Manual Address Blacklist</h2>
% IFDEF $blocks[0]
<ol>
%   FOREACH $b @blocks
<li><strong>BLOCK:</strong>
Blocking all messages from "<% $b->value |h %>".
<a href="<% block/remove/${b->offset} |s %>">Remove this block.</a>
</li>
%   ENDFOREACH
</ol>
% ELSE
<p>No block actions defined at the current time</p>
% ENDIF
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% block |s %>">
<table>
<tr>
<td>Block:</td>
<td><input name="param" value="" size="40" /></td>
<td><input type="submit" name="sub_add" value="Block Address" /></td>
</tr></table>
<table><tr>
<td><input type="submit" name="sub_cancel" value="Back to Options Screen" /></td>
</tr></table>
</form>
% IFDEF $g_help
%   CALL block_help
% ENDIF
% CALL container_end
% CALL footer
