%# $Cambridge: hermes/src/prayer/templates/cam/printable_hdrs.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<table style="width: 100%" class="t_wbanner">
<tr><td>
  <table>
% IFDEF $reply_to[0]
  <tr><td><strong>Reply-To:</strong></td>
  <td align="left">
%   FOREACH $a @reply_to
%     CALL printable_addr, $_alias => $a->alias, $_personal => $a->personal,
%      $_email => $a->email, $_raw => $a->raw, $_next => $a->next
%   ENDFOREACH
  </td></tr>
% ENDIF
  <tr><td><strong>From:</strong></td>
  <td align="left">
% FOREACH $a @from
%   CALL printable_addr, $_alias => $a->alias, $_personal => $a->personal,
%    $_email => $a->email, $_raw => $a->raw, $_next => $a->next
% ENDFOREACH
  </td></tr>
% IFDEF $to[0]
  <tr><td><strong>To:</strong></td>
  <td align="left">
%   FOREACH $a @to
%     CALL printable_addr, $_alias => $a->alias, $_personal => $a->personal,
%      $_email => $a->email, $_raw => $a->raw, $_next => $a->next
%   ENDFOREACH
  </td></tr>
% ENDIF
% IFDEF $cc[0]
  <tr><td><strong>Cc:</strong></td>
  <td align="left">
%   FOREACH $a @cc
%     CALL printable_addr, $_alias => $a->alias, $_personal => $a->personal,
%      $_email => $a->email, $_raw => $a->raw, $_next => $a->next
%   ENDFOREACH
  </td></tr>
% ENDIF
  <tr><td><strong>Date:</strong></td><td><% $date |h %></td></tr>
  <tr><td><strong>Subject:</strong></td><td><% $subject |h %></td></tr>
  </table>
</td></tr></table>

