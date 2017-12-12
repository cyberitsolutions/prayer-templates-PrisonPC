%# $Cambridge: hermes/src/prayer/templates/cam/display_images.t,v 1.2 2010/07/08 16:05:45 dpc22 Exp $
%#
% IFDEF $html_images_shown
<p>
<a href=\
"<% ${g_cmd}/${nav->cur_msg}/${nav->cur_uid}/${section} |s %>">\
Hide unsafe images</a>
</p>
% ELSE
<p>
<a href=\
"<% ${g_cmd}/${nav->cur_msg}/${nav->cur_uid}/${section}/show_images |s %>">\
Show unsafe images</a>
</p>
% ENDIF
