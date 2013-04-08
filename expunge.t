%# $Cambridge: hermes/src/prayer/templates/cam/expunge.t,v 1.2 2008/09/25 16:27:03 dpc22 Exp $
%#
% CALL header
% CALL container_start
% IFNEQ $count 1
<h2 style="text-align: center">Confirm expunge for <% $count |h %> messages</h2>
% ELSE
<h2 style="text-align: center">Confirm expunge for 1 message</h2>
% ENDIF
<div class="confirm">
<ul>
<li><a href="<% list |s %>">Cancel</a></li>
<li class="OK"><a href="<% expunge1 |s %>">Okay</a></li>
</ul>
</div>
% CALL container_end
% CALL footer

