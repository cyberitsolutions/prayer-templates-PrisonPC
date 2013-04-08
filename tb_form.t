%# $Cambridge: hermes/src/prayer/templates/cam/tb_form.t,v 1.3 2008/09/16 16:26:35 dpc22 Exp $
% IFEQ $g_cmd $_cmd
<input type="submit" value="<% $_alt |h %>" name="sub_<% $_cmd |n %>" class="active" />\
% ELSE
<input type="submit" value="<% $_alt |h %>" name="sub_<% $_cmd |n %>" />\
% ENDIF
