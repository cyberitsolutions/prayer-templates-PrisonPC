%# $Cambridge: hermes/src/prayer/templates/cam/display_mime_msg.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<a href="<% display/$_msg/$_uid/$_section |s %>">
<% "$_name $_type $_size" |h %></a>
<a href="<% rawdisplay/$_msg/$_uid/$_section/${_type|u}/${_name|u} |S %>">
Download this section</a>
