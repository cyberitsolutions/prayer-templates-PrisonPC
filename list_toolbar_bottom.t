%# $Cambridge: hermes/src/prayer/templates/cam/list_toolbar_bottom.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<table class="banner" cellspacing="0" cellpadding="0">
<tr>
<td class="nav_r2">Page:
  <input name="page" size="4"
         value="<% $nav->page_current |h %>" 
         onkeypress="return submitenter(this,event, 'Go');" />
&nbsp;/<% $nav->page_count |h %>
<input class="button" type="submit" name="sub_page" value="Go" />
</td></tr></table>
