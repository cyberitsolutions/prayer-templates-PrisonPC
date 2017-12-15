%# $Cambridge: hermes/src/prayer/templates/cam/list_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<h2>Reading a message</h2>
 
<p>To read a message simply select the name of the person
in the <i>From</i> column or select the subject in the <i>Subject</i>
column.</p>

<h2><a name="Actions">The bars above and below the message listing</a></h2>

<p>These are largely identical.  The exceptions are in the centre
of each row:-</p>

<table>
<tr>
 <td valign="top">Top bar</td>
 <td>Informative message indicating the current mail folder and the
     number of messages, for example 
       <strong>"INBOX" with 4 messages </strong>.</td>
</tr>
<tr>
  <td valign="top">Bottom bar</td>
  <td>Shortcut for displaying other pages in a long mail folder
      listing.  For example 
      <form action="<% action_stub |s %>">
      <table>
      <tbody>
      <tr>
       <td>Page:</td>
       <td><input name="page" size="4" value="1" /></td>
       <td>/3</td>
       <td><input type="submit" name="sub_page" value="Go" /></td>
       </tr>
       </tbody>
       </table> 
       </form>
       indicates that the listing spans three pages.  To move to a
       different page enter the required page number in the "Page:" 
       box and then select "Go".
  </td>
</tr>
</table>

<p>The identical elements in each bar are:-</p>

<table>
<tr>
 <td><img src="<% ic_first_page |i %>" alt="First" /></td>
 <td><i>First</i> displays the first page of messages in the mail
      folder.</td>
</tr>
<tr>
 <td><img src="<% ic_chevron_left |i %>" alt="Previous" /></td>
 <td><i>Previous</i> displays the previous page of messages.</td>
</tr>
<tr>
 <td><img src="<% ic_chevron_right |i %>" alt="Next" /> </td>
 <td><i>Next</i> displays the next page of messages. </td>
</tr>
<tr>
 <td><img src="<% ic_last_page |i %>" alt="Last" /></td>
 <td><i>Last</i> displays the last page of messages.</td>
</tr>
<tr>
 <td> &nbsp; </td>
 <td>You can configure how many messages count as one page by using 
     a setting found in <i>Manage -&gt; Preferences -&gt; Display</i>.
     The relevant icon is greyed out if the choice is not applicable 
     (i.e. you are on the first or last page).</td>
</tr>
</table>

<table>
<tr>
<td valign="top">
 <form action="<% action_stub |s %>">
 <table>
 <tr>
 <td valign="top"><select name="aggregate" size="1">
  <option value="delete">Delete marked</option>
  <option value="undelete">Undelete marked</option>
  <option value="read">Flag as read</option>
  <option value="unread">Flag as unread</option>
  <option value="forward">Forward marked</option>
  <option value="copy">Copy marked</option>
  </select>
  </td>
  <td> <input type="submit" name="sub_aggregate" value="Go" /></td
 ></tr>
 </table>
 </form>
</td>
<td>Messages on a screen can be "marked" (selected) by checking the box
    by the message number.  Marking is useful if you want to do the same
    thing with several messages on the page, for example deleting them or
    copying them to the same mail folder.  Once messages have been marked
    various actions can be taken using this pull-down menu. <br />
    <i>Delete marked</i>,  <i>Undelete marked</i> perform the
     obvious actions. <br />
    <i>Flag as read</i> and <i>Flag as unread</i> change the status of
    the marked messages. <br />
   <i>Forward marked</i> takes you to the compose screen with the
   messages inserted as the body of the new message.<br />
    <i>Copy marked</i> takes you  to the folder display, where you can choose
    the folder to which you wish to copy the messages.<br /> 
    Select the action from the pull-down menu and then select <i>Go</i>.
    <br />
    <b>Note:</b> that after you have marked messages on a screen you must
    take action on those messages before you do something else, for example
    move to another page of messages or read a message.  If you do
    something else before you have taken action on the marked messages, the
    marks are cancelled, unless you have set <i>Manage -&gt; Preferences
    -&gt; General -&gt; Use persistent marks</i>.  Using <i>Persistent
    marks</i> changes some options on the message list screen,
    see <a href="#Persist">Using Persistent Marks</a> below.
</td>
</tr>
</table>

<table>
<tr>
 <td valign="top"><i>Refresh</i></td> 
 <td> checks for new mail. Please be cautious in your
      use of this (i.e. use it every few minutes rather than every
      few seconds) as it can put unnecessary load on <% $g_service_name |h %>.</td>
</tr>
<tr>
 <td valign="top"><i>Expunge</i></td>
 <td> deletes from your mail folder all messages that are marked
  as <i>deleted</i>.  Expunged messages cannot be recovered.  Selecting 
  this deletes them immediately - there is no confirmation dialogue.  </td>
</tr>
<tr>
 <td valign="top"><i>Search</i></td>
 <td>takes you to a screen where you can choose a subset of the
  messages in the current mail folder using different criteria including
  date and text search. </td>
</tr>
</table>

<h2><a name="List">The message list</a></h2>

<p> The message list is divided into columns.</p>

<ul>
<li> <a href="#List"> #</a> -
    <i>Message</i>.  The message number.</li>
<li><table><tr>
    <td valign="top">
      <form action="<% action_stub |s %>">
      <table><tr class="t_odd_row">
      <td><input type="checkbox" name="0@0" /></td></tr></table>
      </form>    
    </td><td>
    <i>Mark/Unmark</i>.
   This allows the selection of one or more messages.  
  Initially all messages are unmarked.
  Marking a message changes the icon in this column.
   </td></tr></table>
</li>
<li> <img src="<% ic_mail_outline |i %>" alt="Unseen" /> 
     (<i>Message status</i>)
  <table>
  <tr>
   <td>   <img src="<% ic_mail_outline |i %>" alt="Unseen" /> </td>
   <td> Unread messages. </td>
  </tr>
  <tr>
   <td> <img src="<% ic_mail |i %>" alt="Seen" /> </td>
   <td>  Read messages. </td>
  </tr>
  <tr>
   <td> <img src="<% ic_reply |i %>" alt="Answered" /> </td>
   <td> Message that have been replied to.</td>
  </tr>
  <tr>
   <td valign="top"> <img src="<% ic_delete |i %>" alt="Deleted" />
    </td>
   <td> Deleted messages.   These are not actually removed from <% $g_service_name |h %>
        until <i>Expunge</i> is selected.  Until then they can be
        undeleted  either by selecting the <i>Undelete</i> 
        option for that message or by displaying the message and 
        choosing <i>Undelete</i> on that screen.
    </td>
  </tr>
  </table>
</li>
<li><i>Date</i>. The date on which the message was sent.</li>
<li><i>From</i>. The name of the person who sent the message or, if the 
      message is
    from the current user, the name of the person to whom the message
    is addressed.</li>
<li><i>Size</i>. An indication of the size of the message.</li>
<li><i>Subject</i>. The subject of the message.</li>
<li><i>Delete</i>.  Delete the message.  The option then changes
to <i>Undelete</i>. </li>
</ul>


<h2>Sorting</h2>

<p>The default sort order is by arrival (<i>Message</i>).  It is possible to
temporarily change how you sort the current mail folder  
by selecting <i>Date</i>, <i>From</i>, <i>Size</i> or <i>Subject</i>
in the column headings.
This will sort in ascending order, for example if you sort by <i>Size</i>
the smallest messages are listed first.  It is possible to reverse the 
selected sort order by reselecting your chosen column,
e.g. to sort by descending size select <i>Size</i> twice.</p>

<p>You can also <i>Thread messages</i>.
Threading uses uses reference headers in the message to work out the order
of messages on the same subject.
Selecting this sorts the current mail folder by thread.</p>

<h2><a name="Persist">Using persistent marks</a></h2>

<p>If you have <i>Manage -&gt; Preferences -&gt; General -&gt; Use persistent
marks</i> set then there are some differences in the appearance of the
message list screen and some changes to the actions that can be taken.</p>

<p>One change is the appearance of extra choices in
the bars above and below the message listing.  The example below
shows the changes to the top bar.</p>

<form action="<% action_stub |s %>">
<table style="width: 100%" cellspacing="0" cellpadding="0">
<tbody><tr class="t_banner"><td>
<table>
<tbody><tr>
<td>
<img src="<% ic_first_page_inactive |i %>" alt="First" /></td>
<td>
<img src="<% left-inactive |i %>" alt="Previous" /></td>
<td>
<img src="<% ic_chevron_right_inactive |i %>" alt="Next" /></td>
<td>
<img src="<% ic_last_page_inactive |i %>" alt="Last" /></td>
<td>
<select name="aggregate" size="1">
<option value="delete">Delete marked</option>
<option value="undelete">Undelete marked</option>
<option value="read">Flag as read</option>
<option value="unread">Flag as unread</option>
<option value="forward">Forward marked</option>
<option value="copy">Copy marked</option>
</select>
</td>
<td>
<input type="submit" name="sub_aggregate" value="Go" />
</td>
</tr></tbody></table>
</td><td align="center"><strong>"INBOX" with 4 messages
</strong></td>
<td align="right">
<table>
<tbody><tr>
<td><a href="#Actions"> Refresh</a></td>
<td>|</td>
<td><a href="#Actions"> Expunge</a></td>
<td>|</td>
<td><a href="#Actions"> Mark All</a></td>
<td>|</td>
<td><a href="#Action"> Zoom</a></td>
<td>|</td>
<td><a href="#Actions">
Search</a></td>
</tr>
</tbody>
</table>
</td></tr>
</tbody></table>
</form>

<table>
<tr>
 <td valign="top"><i>Mark All</i></td>
 <td> marks all the messages.</td>
</tr>
<tr>
 <td valign="top"><i>Zoom</i></td>
 <td> requires that you have marked one or more messages.  It displays
     a listing of just the marked messages.  If you are already in 
     a zoomed list (for example as the result of a Search) then this 
     option changes to <i>Unzoom</i> and selecting it will return you
     to the complete mail folder listing.</td>
</tr>
</table>

<p> You mark messages by selecting the <i>Mark/Unmark</i> icon by
the message.  Marking a message changes the icon.  It also changes:</p>

<ul>
<li>the <i>Change To:</i> in the common toolbar to
    include the option <i>Copy marked to:</i> to allow straightforward
    copying to the mail folders listed in the adjacent pull-down list;
</li>
<li>the <i>Mark All</i> option in the action bar above and
    below the message list to <i>UnMark All</i>
</li>
</ul>
