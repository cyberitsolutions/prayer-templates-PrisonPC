%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_title.t,v 1.2 2008/09/28 20:50:01 dpc22 Exp $
<thead>
<tr>
<th align="left"><a href="<% abook_sort/order |s %>">#\
% CALL sort_icon, $_value => "order"
</a></th>
<th align="center">
</th>
<th align="left"><a href="<% abook_sort/alias |s %>">Alias\
% CALL sort_icon, $_value => "alias"
</a></th>
<th align="left"><a href="<% abook_sort/name |s %>">Name\
% CALL sort_icon, $_value => "name"
</a></th>
<th align="left"><a href="<% abook_sort/comment |s %>">Comment\
% CALL sort_icon, $_value => "comment"
</a></th>
<th align="left"><a href="<% abook_sort/email |s %>">Address(es)\
% CALL sort_icon, $_value => "email"
</a></th>
% IFDEF $g_have_draft
<th align="right">
 <input type="submit" name="sub_add_address" value="Add marked to draft" />
</th>
% ELSE
<th>&nbsp;</th>
% ENDIF
</tr>
</thead>
