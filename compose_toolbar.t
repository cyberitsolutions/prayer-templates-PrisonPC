%# $Cambridge: hermes/src/prayer/templates/cam/compose_toolbar.t,v 1.5 2010/11/01 10:57:05 dpc22 Exp $
<div id="header">
  <div id="branding">
  </div>
</div>

<div id="dept-title">
% IFDEF $g_service_name
<h1><% $g_service_name |h %> Email Service</h1>
% ELSE
<h1>Prayer Email Service</h1>
% ENDIF
</div>

<div id="navtabs">
  <div class="compose_toolbar_left">
% CALL compose_toolbar_left
  </div>
  <div class="compose_toolbar_right">
% CALL compose_toolbar_right
  </div>
</div>
