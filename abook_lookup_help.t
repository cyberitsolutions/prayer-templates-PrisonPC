%# $Cambridge: hermes/src/prayer/templates/cam/abook_lookup_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>The addressbook search results screen has three areas:</p>
<ul>
<li>
A search dialogue that will allow you to search again for users on the
local system, or against the University Directory.</li>
<li>
The top and bottom bars, which allow you to navigate around the list of
results. Search which generate a lot of results will be split into pages.</li>
<li>
One result for the current search on each line, with links that affect or
use just that entry.</li>
</ul>

<h2><a name="Links">Search Dialogue</a></h2>

<p>The search dialogue allows you to make another search. It works in
exactly the same way as the search dialogue on the main addressbook
screen.</p>

<p><i>Search <% $g_service_name |h %> Users</i> searches for local users on the
<% $g_service_name |h %> system. The search is made against the initial registered name
of each user (of the form &quot;A.N. Other&quot;) and also against the
fullname which can be set using this Email interface.  Please note: the
local search database only stores limited numbers of results. Queries that
would return large numbers of results (e.g: Smith) will typically return no
results and an explanation to this effect. It is also possible to search
for details on a particular <% $g_service_name |h %> username or for
usernames which match a given set of initials.</p>

<p><i>Search Directory</i> searches the University Directory.  The results
will be more comprehensive than the local search database, but does not
contain information about recently cancelled accounts.</p>

<h2><a name="Links2">Top and bottom bars</a></h2>

<p>These have a group of common elements at the left and right hand
sides of the bar, and a unique element in the centre.</p>

<h3>Top bar, unique element</h3>

<table>
<tr class="t_banner">
<td>
  <table><tr><td><strong>Search Results (1 entry)</strong></td></tr></table>
</td></tr></table>

<p>This provides a summary of the results</p>

<h3>Bottom bar, unique element</h3>

<form action="<% action_stub |s %>">
<table>
<tr class="t_banner">
<td>
 <table>
 <tr>
 <td>Page:</td><td><input name="page" size="4" value="1" /></td>
 <td>/1</td><td><input type="submit" name="sub_page" value="Go" /></td>
 </tr>
 </table>
</td>
</tr>
</table>
</form>

<p>The search results are presented as a series of pages.  The number
of entries on each page is set in <i>Manage -&gt; Preferences -&gt; Display</i>.
This element shows the current page number and the total number of pages.
To change to another page in your addressbook enter the number in
the <i>Page:</i> box and then select <i>Go</i>
</p>
 
<h3>Common elements</h3>

<p>The four icons, 
<img src="<% ic_first_page |i %>" alt="First" />
<img src="<% ic_chevron_left |i %>" alt="Previous" />
<img src="<% ic_chevron_right |i %>" alt="Next" />
<img src="<% ic_last_page |i %>" alt="Last" />,
take you to, respectively, the first, previous, next and last page
of addresses.   An icon is greyed out, as in the example screen on this 
page, if the choice is not applicable (in the example there is only
one page of addresses).
</p>

<h2><a name="List">Search results</a></h2>

<p>Each search result appears on a separate line.</p>

<ul>
<li>If there is currently no draft message, the individual results will
look like this:
 <table><tr class="t_odd_row">
   <td valign="top"><strong>1.</strong></td><td valign="top">dpc22</td>
   <td valign="top">David Carter<br />(D.P. Carter)</td>
   <td valign="top">University Computing Service</td>
   <td>&nbsp;</td><td valign="top"><a href="#ref">Add</a></td>
   <td valign="top"><a href="#ref">Compose</a></td>
 </tr></table>

   <ul>
    <li>A second name appears in parenthesis if the given individual
        has set up a name different from the original, registered name.</li>
    <li>Selecting <i>Add</i> takes you to the <i>Addressbook Entry</i>
        screen so that you can add the email address to your addressbook.</li>
    <li>Selecting <i>Compose</i> takes you to the <i>Compose</i>
     screen, with the address of your choice present in the <i>To:</i> 
     field of the message.  </li>
   </ul>
 </li>
<li>If a draft message is active, each search result will look something
    like:

 <form action="<% action_stub |s %>">
 <table><tr class="t_odd_row">
   <td valign="top"><strong>1.</strong></td><td valign="top">dpc22</td>
   <td valign="top">David Carter<br />(D.P. Carter)</td>
   <td valign="top">University Computing Service</td>
   <td>&nbsp;</td><td valign="top"><a href="#ref">Add</a></td>
   <td><input type="checkbox" name="to_0" />To
     <input type="checkbox" name="cc_0" />Cc
   </td>
 </tr></table>
 </form>

  <p>An extra element will be added at the top right:-</p>
  <form action="<% action_stub |s %>">
  <table>
  <tr class="t_banner"> 
  <td><input type="submit" name="sub_add_address" value="Add marked to draft" />
  </td>
  </tr></table></form>
   <ul>
    <li>A second name appears in parenthesis if the given individual
        has set up a name different from the original, registered name.</li>
    <li>Selecting <i>Add</i> takes you to the <i>Addressbook Entry</i>
        screen so that you can add the email address to your addressbook.</li>
    <li> Use the check boxes to select addresses for the <i> To:</i> or
     <i>Cc:</i> fields of your message.  
       Check the boxes you want on one search result page, then select
       the <i>Add marked to draft</i> button.  The <i>Status</i> line
       will be updated to reflect your action, for example
       <table>
       <tr class="t_status"><td><b>Status:</b>Added 2 addresses to draft</td>
       </tr></table>
       After you have done this
       you can either move to another page of the search results, or
       select <i>Compose</i> from the main toolbar to return to the 
       <i>Compose</i> screen.  If you have chosen addresses these 
       will be added to the relevant header fields of your message.</li>
   </ul>
</li>
</ul>

