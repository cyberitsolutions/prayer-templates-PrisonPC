%# $Cambridge: hermes/src/prayer/templates/cam/display_images.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFDEF $html_images_shown
<p>
<a href=\
"<% display/${nav->cur_msg}/${nav->cur_uid}/${section} |s %>">\
Hide unsafe images</a>
</p>
% ELSE
<p>
<a href=\
"<% display/${nav->cur_msg}/${nav->cur_uid}/${section}/show_images |s %>">\
Show unsafe images</a>
</p>
% ENDIF
