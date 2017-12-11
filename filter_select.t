%# $Cambridge: hermes/src/prayer/templates/cam/filter_select.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Select Target Mail Folder...</h2>
% CALL filter_select_toolbar
% IFDEF $g_favourites[0]
Favourite mail folders:
% CALL favlist, $cmd => "filter_select"
Normal mail folders:
% ENDIF
% CALL folderlist, $cmd => "filter_select"
% CALL filter_select_toolbar
% IFDEF $g_help
%   CALL filter_select_help
% ENDIF
% CALL container_end
% CALL footer
