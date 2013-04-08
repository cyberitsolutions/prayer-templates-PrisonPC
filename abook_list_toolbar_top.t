%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_toolbar_top.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<table class="banner">
<tr>
<td class="nav_l">
% CALL abook_list_nav_1
</td>
<td style="width: 33%" align="center">
% IFEQ $entries "1"
 <strong>Addressbook (1 entry)</strong></td>
% ELSE
 <strong>Addressbook (<% $entries |h %> entries)</strong></td>
% ENDIF
<td class="nav_r">
% CALL abook_list_nav_2
</td></tr></table>
