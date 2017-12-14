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
<p style="text-align: center">
<a href="<% list |s %>"><button type="button">Cancel</button></a></li>
<a href="<% expunge1 |s %>"><button type="button">Okay</button></a>
</p>
</div>
% CALL container_end
% CALL footer

