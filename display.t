%# $Cambridge: hermes/src/prayer/templates/cam/display.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL display_toolbar
<div class="rule"></div>
% CALL display_hdrs
%#
%# Live system inserts message MIME structure and body by hand here
%#
% IFDEF $g_testrig
<% ${message} |n %>
<div class="rule"></div>
%   CALL display_toolbar
%   IFDEF $g_help
%   CALL display_help
%   ENDIF
%   CALL footer
% ENDIF
