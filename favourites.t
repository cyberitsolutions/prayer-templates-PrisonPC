%# $Cambridge: hermes/src/prayer/templates/cam/favourites.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Favourite mail folders</h2>
% CALL favourites_toolbar
<div class="rule"></div>
% IFDEF $g_favourites[0]
Favourite mail folders:
% CALL favlist, $cmd => "favourites"
Normal mail folders:
% ENDIF
% CALL folderlist, $cmd => "favourites"
<div class="rule"></div>
% CALL favourites_toolbar
% IFDEF $g_help
%   CALL favourites_help
% ENDIF
% CALL container_end
% CALL footer
