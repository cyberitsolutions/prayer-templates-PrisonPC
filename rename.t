%# $Cambridge: hermes/src/prayer/templates/cam/rename.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">
Rename folder &quot;<% ${rename_foldername|7} |h %>&quot; to ...</h2>
% CALL rename_toolbar
% CALL folderlist, $cmd => "rename"
% CALL rename_toolbar
% IFDEF $g_help
%   CALL rename_help
% ENDIF
% CALL container_end
% CALL footer
