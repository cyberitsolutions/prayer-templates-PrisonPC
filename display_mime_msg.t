%# $Cambridge: hermes/src/prayer/templates/cam/display_mime_msg.t,v 1.2 2010/07/08 16:05:45 dpc22 Exp $
<a href="<% ${g_cmd}/$_msg/$_uid/$_section |s %>">
<% "$_name $_type $_size" |h %></a>
<a href="<% rawdisplay/$_msg/$_uid/$_section/${_type|u}/${_name|u} |S %>">
Download this section</a>
