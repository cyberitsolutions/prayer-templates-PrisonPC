%# $Cambridge: hermes/src/prayer/templates/cam/copy.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% IFNEQ $count "1"
<h2 style="text-align: center">Copy <% $count | h %> messages to folder...</h2>
% ELSE
<h2 style="text-align: center">Copy message to folder...</h2>
% ENDIF
% CALL copy_toolbar
<div class="rule"></div>
% IFDEF $g_favourites[0]
Favourite mail folders:
% CALL favlist, $cmd => "copy"
Normal mail folders:
% ENDIF
% CALL folderlist, $cmd => "copy"
%#<div class="rule"></div>
%# CALL copy_toolbar
% IFDEF $g_help
%   CALL copy_help
% ENDIF
% CALL container_end
% CALL footer
