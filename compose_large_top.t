%# $Cambridge: hermes/src/prayer/templates/cam/compose_large_top.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<table cellspacing="0" cellpadding="0">
<tr>
<td><input type="submit" name="sub_small" value="Small" /></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
% IFDEF $g_help
<td><input type="submit" name="sub_help" value="Hide Help" /></td>
% ELSE
<td><input type="submit" name="sub_help" value="Help" /></td>
% ENDIF
<td><input type="submit" name="sub_logout" value="Logout" /></td>
</tr></table>
