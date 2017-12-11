%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_search.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<form method="post" accept-charset="UTF-8"
      enctype="multipart/form-data" action="<% abook_lookup |s %>">
<table class="banner">
<tr><td class="nav_r">
Surname:<input name="query" value="" size="20" 
         onkeypress="return submitenter(this,event, 'Search Directory');" />
% IFDEF $have_local_lookup
<input type="submit" name="sub_local"
%   IFDEF $g_service_name
 value="Search <% $g_service_name |h %> Users" />
%   ELSE
 value="Search Prayer Users" />
%   ENDIF
% ENDIF
% IFDEF $have_ldap_lookup
<input type="submit" name="sub_ldap" value="Search Directory" />
% ENDIF
</td></tr></table>
</form>
