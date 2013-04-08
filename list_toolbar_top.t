%# $Cambridge: hermes/src/prayer/templates/cam/list_toolbar_top.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<table class="banner" cellpadding="0">
<tr>
% CALL list_nav_1, $_agg => "aggregate"
<td class="nav_c">
% IFEQ $nav->msg_count "1"
  <strong>"<% ${foldername|7} |h %>" with 1 message</strong>
% ELSE
  <strong>"<% ${foldername|7} |h %>" with
<% $nav->msg_count |h %> messages</strong>
% ENDIF
</td>
% CALL list_nav_2
</tr></table>
