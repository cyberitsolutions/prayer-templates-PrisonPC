%# $Cambridge: hermes/src/prayer/templates/cam/abook_list_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>The addressbook screen has three areas:</p>
<ul>
<li>
A search dialogue that will allow you to search for users on the local
system, or against the University Directory.</li>
<li>
the top and bottom bars, which contain information about the 
addressbook and links that affect, or act on, the whole addressbook;</li>
<li>
the one-entry-per-line listing of addresses, with links that affect 
or use just that entry.</li>
</ul>

<h2><a name="Links">Search Dialogue</a></h2>

<p><i>Search <% $g_service_name |h %> Users</i> searches for local users on the
<% $g_service_name |h %> system. The search is made against the initial registered name
of each user (of the form &quot;A.N. Other&quot;) and also against the
fullname which can be set using this Email interface.  Please note: the
local search database only stores limited numbers of results. Queries that
would return large numbers of results (e.g: Smith) will typically return no
results and an explanation to this effect. It is also possible to search
for details on a particular <% $g_service_name |h %> username or for usernames which
match a given set of initials.</p>

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
  <table><tr><td><strong>Addressbook (3 entries)</strong></td></tr></table>
</td></tr></table>

<p>This provides a summary of the number of entries in your addressbook.</p>

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

<p>The addressbook is presented as a series of pages.  The number
of entries on each page is set in <i>Manage -&gt; Preferences -&gt; Display</i>.
This element shows the current page number and the total number of pages.
To change to another page in your addressbook enter the number in
the <i>Page:</i> box and then select <i>Go</i>
</p>
 
<h3>Common elements</h3>

<p>The four icons, 
<img src="<% leftleft |i %>" alt="First" />
<img src="<% left |i %>" alt="Previous" />
<img src="<% right |i %>" alt="Next" />
<img src="<% rightright |i %>" alt="Last" />,
take you to, respectively, the first, previous, next and last page
of addresses.   An icon is greyed out, as in the example screen on this 
page, if the choice is not applicable (in the example there is only
one page of addresses).
</p>

<p>
<i>Add</i> takes you to a blank <i>Addressbook Entry</i> screen.</p>

<p>
<i>Remove Marked Entries</i> will remove any entries which have been
tagged in the main section.</p>

<p><i>Transfer</i> takes you to a screen from which you can</p>
<ul>
 <li> import a Pine-format addressbook on your local system 
      into your Email addressbook,</li>
 <li> export your Email addressbook to a Pine-format addressbook 
      on your local system,</li>
 <li> import your Pine addressbook on <% $g_service_name |h %> into your
      Email addressbook </li>
 <li> export your Email addressbook for use with Pine on <% $g_service_name |h %>.</li>
</ul>

<p>
<i>Search</i> takes you to a screen from which you can search
for entries matching your chosen criteria. </p>


<h2><a name="List">Addressbook list</a></h2>

<p>Each addressbook entry appears on a separate line.  There
is a difference in the display depending on what screen you were
in when you selected <i>Addressbook</i>.</p>

<ul>
<li>If you select <i>Addressbook</i> from the majority of screens in 
Email, an individual entry will look like this:
 <form action="<% action_stub |s %>">
 <table>
 <tr class="t_odd_row">
 <td><a  href="#List">someone</a></td>
 <td>A. Person</td>
 <td>Sales contact at Somewhere Company</td>
 <td>someone@somewhere.com</td>
 <td><a href="#List">Compose</a></td>
 </tr></table></form>
   <ul>
    <li>Selecting an entry from the first (<i>Alias</i>) column takes you to
    the <i>Addressbook Entry</i> screen for that alias, where you can 
    update or delete the entry.</li>
    <li>Selecting <i>Compose</i> takes you to the <i>Compose</i>
     screen, with the address of your choice present in the <i>To:</i> 
     field of the message.</li>
   </ul>
  </li>
<li>If you select <i>Addressbook</i> from the <i>Compose</i> screen, an 
entry will look like this:
 <form action="<% action_stub |s %>">
 <table>
 <tr class="t_odd_row">
 <td><a href="#List">someone</a></td>
 <td>A. Person</td>
 <td>Sales contact at Somewhere Company</td>
 <td>someone@somewhere.com</td>
 <td><input type="checkbox" name="to_0" />To
     <input type="checkbox" name="cc_0" />Cc
     <input type="checkbox" name="bcc_0" />Bcc
  </td>
 </tr> </table> </form>
  <p>An extra element will be added at the top right:-</p>
  <form action="<% action_stub |s %>">
  <table>
  <tr class="t_banner"> 
  <td><input type="submit" name="sub_add_address" value="Add marked to draft" />
  </td>
  </tr></table></form>
   <ul>
    <li>Selecting an entry from the first (<i>Alias</i>) column takes you to
        the <i>Addressbook Entry</i> screen for that alias, where you can 
        update or delete the entry.</li>
    <li> Use the check boxes to select addresses for the <i> To:</i>,
     <i>Cc:</i> or <i> Bcc:</i> fields of your message.  
       Check the boxes you want on one addressbook page, then select
       the <i>Add marked to draft</i> button.  The <i>Status</i> line
       will be updated to reflect your action, for example
       <table>
       <tr class="t_status"><td><b>Status:</b>Added 2 addresses to draft</td>
       </tr></table>
       After you have done this
       you can either move to another page of your addressbook, or
       select <i>Compose</i> from the main toolbar to return to the 
       <i>Compose</i> screen.  If you have chosen addresses these 
       will be added to the relevant header fields of your message.</li>
   </ul>
</li>
</ul>

<h2>Sorting</h2>

<p>It is possible to temporarily change how you sort the addressbook by
selecting <i>Alias</i>, <i>Name</i>, <i>Comment</i> or <i>Address(es)</i>
in the column headings.  This will sort in ascending order; it is possible
to reverse the selected sort order by reselecting your chosen column.</p>
