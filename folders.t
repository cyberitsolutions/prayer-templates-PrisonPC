%# $Cambridge: hermes/src/prayer/templates/cam/folders.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Mail Folders</h2>
% CALL folders_toolbar
<div class="rule"></div>
% CALL folderlist, $cmd => "folders"
%# <div class="rule"></div>
%# CALL folders_toolbar
% IFDEF $g_help
%   CALL folders_help
% ENDIF
% CALL container_end
% CALL footer
