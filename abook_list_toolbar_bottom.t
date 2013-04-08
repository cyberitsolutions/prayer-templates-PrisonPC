%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_toolbar_bottom.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<table class="banner">
<tr>
<td class="nav_l">
% CALL abook_list_nav_1
</td>
<td style="width: 33%" align="center">
  <table><tr>
  <td>Page:</td>
  <td><input name="page" size="4" value="<% $page_current |h %>" 
             onkeypress="return submitenter(this,event, 'Go');" /></td>
  <td>/<% $page_total |h %></td>
  <td><input type="submit" name="sub_page" value="Go" /></td>
  </tr></table>
</td>
<td class="nav_r">
% CALL abook_list_nav_2
</td></tr></table>
