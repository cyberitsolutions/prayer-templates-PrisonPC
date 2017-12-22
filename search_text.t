%# $Cambridge: hermes/src/prayer/templates/cam/search_text.t,v 1.3 2008/10/06 14:17:27 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL submitenter_js
% CALL search_header, $_type => "Text"
%
<table><tr><td>
<select name="text_key" size="1">
<option value="from">From</option>
<option value="to">To</option>
<option value="cc">Cc</option>
% IFDEF $is_sent_mail
<option value="recipient" selected="selected">Recipient</option>
% ELSE
<option value="recipient">Recipient</option>
% ENDIF
<option value="participant">Participant</option>
<option value="subject">Subject</option>
<option value="text">Text</option>
</select>
</td><td>
<select name="text_op" size="1">
<option value="match">Contains</option>
<option value="nomatch">Does not contain</option>
</select>
</td><td>
<input name="text_value" value="" size="30"
       onkeypress="return submitenter(this,event, 'Search');" />
</td></tr>
</table>
% CALL search_footer
% IFDEF $g_help
%   CALL search_text_help
% ENDIF
% CALL container_end
% CALL footer
