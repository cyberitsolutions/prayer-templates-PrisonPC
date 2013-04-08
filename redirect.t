%# $Cambridge: hermes/src/prayer/templates/cam/redirect.t,v 1.2 2008/10/03 12:05:41 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Mail Redirection</h2>
<div>
<strong>WARNING:</strong>
<blockquote>
<p>
 Support staff within the University and Colleges
 will not be able to help you with email problems if you
 forward your email outside Cambridge and the problems
 involve external systems. Note that there may be issues
 of privacy and/or reliability with external email systems
 which you should consider.
</p>
</blockquote>
</div>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% redirect |s %>">
<table>
<tr>
% IFDEF $use_redirect
<td>
 <input type="checkbox" name="use_redirect" value="1" checked="checked" />
</td>
% ELSE
<td><input type="checkbox" name="use_redirect" value="1" /></td>
% ENDIF
<td>Enable Redirection</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Redirect address:</td>
<td>
 <input name="redirect_addr" value="<% $redirect_addr |h %>" size="40" />
</td>
</tr>
<tr>
% IFDEF $redirect_copy
<td><input type="checkbox" name="save_copy" value="1" checked="checked" /></td>
% ELSE
<td><input type="checkbox" name="save_copy" value="1" /></td>
% ENDIF
<td>Save copy in this account</td>
</tr>
</table>
<table>
<tr>
<td>
 <input type="submit" name="sub_cancel" value="Back to Options Screen" />
</td>
<td><input type="submit" name="sub_apply" value="Apply" /></td>
</tr>
</table>
</form>
% IFDEF $g_help
%   CALL redirect_help
% ENDIF
% CALL container_end
% CALL footer
