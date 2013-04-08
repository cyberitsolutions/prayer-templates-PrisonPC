%# $Cambridge: hermes/src/prayer/templates/cam/rm.t,v 1.2 2008/09/25 16:27:03 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h2 style="text-align: center">Confirm <% $type |h %> deletion: "<% ${name|7} |h %>"</h2>
<div class="confirm">
<ul>
<li><a href="<% folders |s %>">Cancel</a></li>
<li class="OK"><a href="<% rm1/$type/${name|c} |s %>">Okay</a></li>
</ul>
</div>
% CALL container_end
% CALL footer

