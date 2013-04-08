%# $Cambridge: hermes/src/prayer/templates/cam/abook_lookup_search.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<table class="banner">
<tr><td class="nav_l">
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_lookup |s %>">
<div>
 <input type="submit" name="sub_cancel" value="Cancel Search" />
</div>
</form>
</td>
<td class="nav_r">
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_lookup |s %>">
<div>
Surname:
<input name="query" value="<% $query |h %>" size="20" 
         onkeypress="return submitenter(this,event, 'Search Directory');" />
<input type="submit" name="sub_local"
       value="Search <% $g_service_name |h %> Users" />
<input type="submit" name="sub_ldap" value="Search Directory" />
</div>
</form>
</td>
</tr></table>
<div class="rule"></div>
