%# $Cambridge: hermes/src/prayer/templates/cam/display_mime_other.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
% IFDEF $g_use_icons
<a href="<% rawdisplay/$_msg/$_uid/$_section/${_type|u}/${_name|u} |S %>">
<img src="<% paperclip-small |i %> " alt="[paperclip]" /></a>
% ENDIF
<a href="<% rawdisplay/$_msg/$_uid/$_section/${_type|u}/${_name|u} |S %>">
<% "$_name $_type $_size" |h %></a>
