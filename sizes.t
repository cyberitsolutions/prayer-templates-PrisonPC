%# $Cambridge: hermes/src/prayer/templates/cam/sizes.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Mail Folder Sizes</h2>
% CALL sizes_toolbar
<div class="rule"></div>
% CALL folderlist, $cmd => "sizes"
<div class="rule"></div>
% CALL sizes_toolbar
% IFDEF $g_help
%   CALL sizes_help
% ENDIF
% CALL container_end
% CALL footer
