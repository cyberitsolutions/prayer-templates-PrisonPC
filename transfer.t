%# $Cambridge: hermes/src/prayer/templates/cam/transfer.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Mailbox Transfer</h2>
% CALL transfer_toolbar_top
<div class="rule"></div>
% IFDEF $g_favourites[0]
Favourite mail folders:
% CALL favlist, $cmd => "transfer"
Normal mail folders:
% ENDIF
% CALL folderlist, $cmd => "transfer"
<div class="rule"></div>
% CALL transfer_toolbar_bottom
% IFDEF $g_help
%   CALL transfer_help
% ENDIF
% CALL container_end
% CALL footer
