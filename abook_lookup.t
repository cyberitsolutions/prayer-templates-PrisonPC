%# $Cambridge: hermes/src/prayer/templates/cam/abook_lookup.t,v 1.2 2008/09/18 19:52:00 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL submitenter_js
% CALL abook_lookup_search
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_lookup |s %>">
<table class="banner">
<tr>
<td class="nav_l">
% CALL abook_lookup_nav_1
</td>
% IFNEQ $count 1
<td class="nav_c">
 <strong>Search Results (<% $count |h %> entries)</strong></td>
% ELSE
<td class="nav_c">
 <strong>Search Results (1 entry)</strong></td>
% ENDIF
<td class="nav_r">
 <table><tr><td>&nbsp;</td></tr></table>
</td>
</tr></table>
<div class="rule"></div>
<table class="altrows">
<thead>
<tr>
<th>#</th>
<th>Userid</th>
<th>Name (Registered Name)</th>
<th>Primary Affiliation</th>
% IFDEF $have_cancelled
<th style="width: 10%">Cancelled?</th>
% ENDIF
% IFDEF $have_phone
<th style="width: 10%">Phone</th>
% ENDIF
<th style="width: 10%">Addressbook</th>
<th style="width: 10%" align="center">
% IFDEF $g_have_draft
<input type="submit" name="sub_add_address" value="Add marked to draft" />
% ELSE
&nbsp;
% ENDIF
</th></tr>
</thead>
<tbody>
% FOREACH $i @list
%   IFDEF $i->even_row
<tr class="t_even_row">
%   ELSE
<tr class="t_odd_row">
%   ENDIF
<td valign="top"><strong><% $i->offset |h %>.</strong></td>
<td valign="top"><% $i->userid |h %></td>
%   IFDEF ${i->registered_name}
<td valign="top"><% $i->display_name |h %>
<br />(<% $i->registered_name |h %>)</td>
%   ELSE
<td valign="top"><% $i->display_name |h %></td>
%   ENDIF
<td valign="top"><% $i->affiliation |h %></td>
%   IFDEF $have_cancelled
<td valign="top"><% "CANCELLED" IFDEF ${i->cancelled} |h %></td>
%   ENDIF
%   IFDEF $have_phone
<td valign="top"><% $i->phone |h %></td>
%   ENDIF
<td valign="top"><a href="<% abook_take?alias=${i->alias|u}&name=${i->display_name|u}&comment=${i->comment|u}&email=${i->email|u} |s %>">Add</a></td>
%   IFDEF $g_have_draft
<td valign="top">
<input type="checkbox" name="to_<% $i->offset |h %>" />To
<input type="checkbox" name="cc_<% $i->offset |h %>" />Cc
</td>
%   ELSE
<td valign="top"><a href="<% abook_compose/${i->display_name|c}/${i->email|c} |s %>">Compose</a></td>
%   ENDIF
</tr>
% ENDFOREACH
</tbody>
</table></form>
<div class="rule"></div>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_lookup |s %>">
<table class="banner">
<tr>
<td class="nav_l">
% CALL abook_lookup_nav_1
</td>
<td class="nav_c">
Page:
<input name="page" size="4" value="<% $page_current |h %>" />\
/<% $page_total |h %>
<input type="submit" name="sub_page" value="Go" /></td>
<td class="nav_r">&nbsp;</td>
</tr></table>
</form>
% IFDEF $g_help
%   CALL abook_lookup_help
% ENDIF
% CALL container_end
% CALL footer
