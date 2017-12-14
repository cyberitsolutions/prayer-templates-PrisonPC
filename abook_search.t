%# $Cambridge: hermes/src/prayer/templates/cam/abook_search.t,v 1.4 2008/09/17 21:49:26 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% CALL submitenter_js
<h2 style="text-align: center">Addressbook Search</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_search |s %>">
<p>Search for entries where
<select name="cond" size="1">
% IFDEF $match_all
<option value="any">any</option>
<option value="all" selected="selected">all</option>
% ELSE
<option value="any" selected="selected">any</option>
<option value="all" >all</option>
% ENDIF
</select>
of the following conditions hold
</p>
<table>
% FOREACH $f @filters
<tr><td>
<select name="key<% $f->count |h %>" size="1">
<option value="alias"
% IFEQ $f->selected "alias"
 selected="selected"
% ENDIF
>Alias</option>
<option value="name"
% IFEQ $f->selected "name"
 selected="selected"
% ENDIF
>Name</option>
<option value="comment"
% IFEQ $f->selected "comment"
 selected="selected"
% ENDIF
>Comment</option>
<option value="email"
% IFEQ $f->selected "email"
 selected="selected"
% ENDIF
>Address</option>
</select>
</td><td>
<select name="op<% $f->count |h %>" size="1">
<option value="is"
% IFEQ $f->type "is"
 selected="selected"
% ENDIF
>is</option>
<option value="begins"
% IFEQ $f->type "begins"
 selected="selected"
% ENDIF
>begins</option>
<option value="ends"
% IFEQ $f->type "ends"
 selected="selected"
% ENDIF
>ends</option>
<option value="contains"
% IFEQ $f->type "contains"
 selected="selected"
% ENDIF
>contains</option>
</select>
</td><td>
<input name="val<% $f->count |h %>" value="<% $f->value |h %>" size="30"
       onkeypress="return submitenter(this,event, 'Search');" />
</td></tr>
% ENDFOREACH
</table>
<table><tr>
<td><input type="submit" name="sub_search" value="Search" /></td>
<td><input type="submit" name="sub_add_cond" value="Add Condition" /></td>
</tr></table>
</form>
% IFDEF $results[0]
%   IFNEQ $count 1
<p><% $count |h %> matches for those search criteria:</p>
%   ELSE
<p>1 match for those search criteria:</p>
%   ENDIF
<table class="data"><tr>
<th align="left">Alias</th>
<th align="left">Name</th>
<th align="left">Comment</th>
<th align="left">Address</th>
<th>&nbsp;</th>
</tr>
%   FOREACH $r @results
<tr>
<td><a href="<% abook_update?alias=${r->alias|u}&name=${r->name|u}&comment=${r->comment|u}&email=${r->email|u} |s %>"><% $r->alias |h %></a></td>
<td><% $r->name |h %></td>
<td><% $r->comment |h %></td>
<td><% $r->email |h %></td>
% IFDEF $g_have_draft
<td>
<a href="<% add_address/abook_search/To/${r->name|c}/${r->email|c} |s %>">
<button type="button">To</button></a>
<a href="<% add_address/abook_search/Cc/${r->name|c}/${r->email|c} |s %>">
<button type="button">Cc</button></a>
</td>
% ELSE
<td><a href="<% abook_compose/${r->name|c}/${r->email|c} |s %>">
<button type="button">Compose fresh message</button></a></td>
% ENDIF
</tr>
%   ENDFOREACH
</table>
% ENDIF
% IFDEF $g_help
%   CALL abook_search_help
% ENDIF
% CALL container_end
% CALL footer
