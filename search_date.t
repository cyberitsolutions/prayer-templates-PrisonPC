%# $Cambridge: hermes/src/prayer/templates/cam/search_date.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL search_header, $_type => "Date"
<table><tr><td>Date</td><td>
</td><td>
<select name="date_op" size="1">
<option value="before_exc">Before (not including)</option>
<option value="before_inc">Before (including)</option>
<option value="on" selected="selected">On</option>
<option value="since_inc">Since (including)</option>
<option value="since_exc">Since (not including)</option>
</select>
</td><td>
<select name="date_day" size="1">
% FOREACH $d @day
%   IFDEF $d->selected
<option value="<% $d->day |h %>" selected="selected"><% $d->day |h %></option>
%   ELSE
<option value="<% $d->day |h %>"><% $d->day |h %></option>
%   ENDIF
% ENDFOREACH
</select>
</td><td>
<select name="date_month" size="1">
% FOREACH $m @month
%   IFDEF $m->selected
<option value="<% $m->value |h %>" selected="selected"><% $m->name |h %></option>
%   ELSE
<option value="<% $m->value |h %>"><% $m->name |h %></option>
%   ENDIF
% ENDFOREACH
</select>
</td><td>
<input name="date_year" value="<% $year |h %>" size="4" />
</td></tr>
</table>
% CALL search_footer
% IFDEF $g_help
%   CALL search_date_help
% ENDIF
% CALL container_end
% CALL footer
