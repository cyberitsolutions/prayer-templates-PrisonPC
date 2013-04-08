%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_title.t,v 1.2 2008/09/28 20:50:01 dpc22 Exp $
<tr class="t_title">
<td style="width: 4%"><a href="<% abook_sort/order |s %>">#\
% CALL sort_icon, $_value => "order"
</a></td>
<td style="width: 2%" align="center">
 <input type="checkbox" name="noop" checked="checked" />
</td>
<td style="width: 7%"><a href="<% abook_sort/alias |s %>">Alias\
% CALL sort_icon, $_value => "alias"
</a></td>
<td style="width: 15%"><a href="<% abook_sort/name |s %>">Name\
% CALL sort_icon, $_value => "name"
</a></td>
<td style="width: 17%"><a href="<% abook_sort/comment |s %>">Comment\
% CALL sort_icon, $_value => "comment"
</a></td>
<td style="width: 40%"><a href="<% abook_sort/email |s %>">Address(es)\
% CALL sort_icon, $_value => "email"
</a></td>
% IFDEF $g_have_draft
<td style="width: 15%" align="center">
 <input type="submit" name="sub_add_address" value="Add marked to draft" />
</td>
% ELSE
<td style="width: 15%">&nbsp;</td>
% ENDIF
</tr>
