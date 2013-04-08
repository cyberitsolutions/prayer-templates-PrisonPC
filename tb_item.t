%# $Cambridge: hermes/src/prayer/templates/cam/tb_item.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<li><a \
% IFEQ $g_cmd $_cmd
class="current first" \
% ENDIF
href="<% $_cmd |s %>"><% $_text |h %></a></li>
