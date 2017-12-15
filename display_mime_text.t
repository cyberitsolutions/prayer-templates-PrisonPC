%# $Cambridge: hermes/src/prayer/templates/cam/display_mime_text.t,v 1.2 2010/07/08 16:05:45 dpc22 Exp $
<a href="<% ${g_cmd}/$_msg/$_uid/$_section |s %>">
% IFNEQ $_lines 1
<% "$_type, $_lines lines" |h %></a>
% ELSE
<% "$_type, 1 line" |h %></a>
% ENDIF
