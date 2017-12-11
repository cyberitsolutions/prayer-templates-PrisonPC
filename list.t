%# $Cambridge: hermes/src/prayer/templates/cam/list.t,v 1.6 2008/09/18 19:31:46 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL submitenter_js
%
% IFDEF $use_persist
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% aggregate |s %>">
% ELSE
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% aggregate_tmp |s %>">
% ENDIF
% CALL list_toolbar_top
<div class="rule"></div>
% IFDEF $list_msg[0]
<table class="altrows truncate">
%   CALL list_title
%   CALL list_msgs
</table>
<div class="rule"></div>
% CALL list_toolbar_bottom
% ENDIF
</form>
% IFDEF $g_help
%   CALL list_help
% ENDIF
% CALL container_end
% CALL footer

