%# $Cambridge: hermes/src/prayer/templates/cam/display_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>By default you will see two instances of the bar, as in the example
above.  You can choose to turn off the bar below the message (or indeed
the use of any icons in the Email interface) using options found in
<i>Manage -&gt; Preferences -&gt; Display</i>.  </p>

<table style="width: 100%">
<tr>
 <td valign="top"><img src="<% left |i %>" alt="Prev" />
     <img src="<% right |i %>" alt="Next" />
 </td>
 <td><i>Previous</i> and <i>Next</i> take you to, respectively, 
     the previous and next message.   The relevant icon is greyed out,
     as in the example above, 
     if the choice is not applicable (i.e. you are on the first or last 
     message).</td>
</tr>
<tr>
 <td valign="top"><i>Copy</i></td>
 <td>takes you  to the folder display screen, where you can choose
    the folder to which you wish to copy the message. </td>
</tr>
<tr>
 <td valign="top"><i>Delete</i></td>
 <td> marks the message as deleted and displays the next message in
     the mail folder.  If you delete the final message in the folder
     you are returned to the mail folder list.  Messages are not 
     removed from the mail folder until <i>Expunge</i> has been selected 
     in the mail folder list screen. </td>
</tr>
<tr>
 <td valign="top"><i>Reply</i></td>
 <td> prepares a reply.   Selecting this takes you to the 
     <i>Compose</i> screen and the original message is included 
     in the reply.  If there is more than one name on 
     the original recipients list you are asked whether you wish to reply to
     the sender only or to reply to the sender and all recipients.  </td>
</tr> 
<tr>
 <td valign="top"><i>Forward</i></td>
 <td> enables you to forward the message to someone else. Selecting
      this takes you to the <i>Compose</i> screen and the original
      message is included in the message body. </td>
</tr>
<tr>
 <td valign="top"><strong>Message: 1 out of 4</strong></td>
 <td> informative message.</td>
</tr>
<tr>
 <td valign="top"><i>Show Hdrs</i></td>
 <td><i>Show Headers</i> displays the full set of message headers.
     This option is most useful when trying to trace a problem.
     If you select this the option changes to <i>Hide Hdrs</i> and
     the full headers are shown for every message until you
     select <i>Hide Hdrs</i>. </td>
</tr>
<tr>
 <td valign="top"><i>Download Message</i></td>
 <td> this presents the entire message, including all the 
      message headers, in a plain form (i.e. without the Email icons 
      and actions) suitable for printing or saving to 
      your local system using your browser's printing and saving
      facilities.</td>
</tr> 
</table>

<h2><a name="Message">The message</a></h2>

<p>The <strong>From:</strong> and <strong>To:</strong> headers
have links that enable you to take the address into your address book.
Selecting one takes you to the <i>Addressbook Entry</i> screen with
the entries placed in the Name and Address(es) fields.</p>

<h2><a name="Attach">Attachments</a></h2>

<p>If a message has attachments then information about the message
structure, including attachments, will be shown:-</p>

<hr />
<p>MIME structure of <a href="#Attach">this message</a>, including 
any attachments:</p>
<ol>
<li>
<a href="#Attach">(text/plain), 0 lines</a>
</li>
<li>
<a href="#Attach">
  <img src="<% paperclip-small |i %>" alt="[paperclip]" /></a>
<a href="#Attach">MyDocument.rtf (application/octet-stream), 3 K</a>
</li>
</ol>
<hr />

<p>In this example part <i>1.</i> is the text body of the message and
part <i>2.</i> the attachment (indicated by the small paperclip icon
 <img src="<% paperclip-small |i %>" alt="[paperclip]" />).
To save the attachment select the link 
containing the attachment name and use your  browser's "Save" feature to
navigate to where you wish to put the attachment on your local machine.
</p>

<h2>Persistent Marks</h2>

<p>If you have <i>Manage -&gt; Preferences -&gt; General -&gt; Use
persistent marks</i> set then there will be an extra option, <i>Mark</i> in
the bars above and below the message.</p>

<p><i>Mark</i> marks the message so that you can take an action on it later.
The next message is then displayed.  If you have marked the final message
in the folder you are returned to the mail folder list.  The icon in
the mail folder list screen changes to show the message has been marked.
If you return to displaying a marked message before you have taken any
action on it the option on this screen is changed to <i>Unmark</i>. 
</p>

