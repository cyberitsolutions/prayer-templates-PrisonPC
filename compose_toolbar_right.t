%# $Cambridge: hermes/src/prayer/templates/cam/compose_toolbar_right.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
% IFDEF $g_help
%   CALL tb_form, $_cmd => "help", $_alt => "Hide Help"
% ELSE
%   CALL tb_form, $_cmd => "help", $_alt => "Help"
% ENDIF
% CALL tb_form, $_cmd => "logout", $_alt => "Logout"

