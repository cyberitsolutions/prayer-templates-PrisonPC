%# $Cambridge: hermes/src/prayer/templates/cam/abook_list.t,v 1.2 2008/09/18 19:52:00 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL submitenter_js
%
% IFDEF $have_lookup
%   CALL abook_list_search
<div class="rule"></div>
% ENDIF
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_list |s %>">
% CALL abook_list_toolbar_top
<div class="rule"></div>
% IFDEF $abook[0]
<table class="altrows">
%   CALL abook_list_title
%
%   FOREACH $a @abook
%   IFDEF $a->even_row
<tr class="t_even_row">
%   ELSE
<tr class="t_odd_row">
%   ENDIF
<td><strong><% $a->num |h %>.</strong></td>
<td><input type="checkbox" name="remove_<% $a->alias |c %>" /></td>
<td><a href="<% abook_update?alias=${a->alias|u}&name=${a->name|u}&comment=${a->comment|u}&email=${a->email|u} |s %>"><% $a->alias |h %></a></td>
<td><% $a->name |h %></td>
<td><% $a->comment |h %></td>
<td><% $a->email |h %></td>
<td>
%   IFDEF $g_have_draft
<input type="checkbox" name="to_<% $a->num |n %>" />To
<input type="checkbox" name="cc_<% $a->num |n %>" />Cc
<input type="checkbox" name="bcc_<% $a->num |n %>" />Bcc
%   ELSE
<a href="<% abook_compose/${a->name|c}/${a->email|c} |s %>">Compose</a>
%   ENDIF
</td>
</tr>
%   ENDFOREACH
</table>
<div class="rule"></div>
%   CALL abook_list_toolbar_bottom
% ENDIF
</form>
% IFDEF $g_help
%   CALL abook_list_help
% ENDIF
% CALL container_end
% CALL footer
