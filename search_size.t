%# $Cambridge: hermes/src/prayer/templates/cam/search_size.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL submitenter_js
% CALL search_header, $_type => "Size"
%
<table><tr><td>
<select name="size_op" size="1">
<option value="larger">Larger than (Kbytes)</option>
<option value="smaller">Smaller than (Kbytes)</option>
</select></td><td>
<input name="value" value="" size="10"
       onkeypress="return submitenter(this,event, 'Search');" />
</td></tr></table>
% CALL search_footer
% IFDEF $g_help
%   CALL search_size_help
% ENDIF
% CALL container_end
% CALL footer
