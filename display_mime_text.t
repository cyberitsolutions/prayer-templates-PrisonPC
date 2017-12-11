%# $Cambridge: hermes/src/prayer/templates/cam/display_mime_text.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<a href="<% display/$_msg/$_uid/$_section |s %>">
% IFNEQ $_lines 1
<% "$_type, $_lines lines" |h %></a>
% ELSE
<% "$_type, 1 line" |h %></a>
% ENDIF
<a href="<% rawdisplay/$_msg/$_uid/$_section/${_type|u}/${_name|u} |S %>">
Download this text
</a>

