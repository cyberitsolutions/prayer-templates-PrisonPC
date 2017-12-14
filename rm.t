%# $Cambridge: hermes/src/prayer/templates/cam/rm.t,v 1.2 2008/09/25 16:27:03 dpc22 Exp $
%#
% CALL header
% CALL container_start
<h2 style="text-align: center">Confirm <% $type |h %> deletion: "<% ${name|7} |h %>"</h2>
<div class="confirm">
<p style="text-align: center">
<a href="<% folders |s %>"><button type="button">Cancel</button></a>
<a href="<% rm1/$type/${name|c} |s %>"><button type="button">Okay</button></a>
</p>
</div>
% CALL container_end
% CALL footer

