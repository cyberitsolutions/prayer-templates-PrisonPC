%# $Cambridge: hermes/src/prayer/templates/cam/copy_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>The layout is similar to the main mail folders screen.  If you have
any <i>Favourite Mail Folders</i> these will be listed between the 
<i>INBOX</i> and  the main mail folder listing.</p>

<h2>Saving the message</h2>

<ul>
<li>If the folder exists, and you can see it, 
    then <a name="List">select</a> the name of the chosen mail folder, 
    or the folder icon by its name.</li>
<li>Use <img src="<% right |i %>" alt="[Expand]" /> to
  expand collapsed directories.</li>
<li>If the folder does not exist you will need to create it.
    <ul>
     <li>
      For example selecting <i>mailbox</i> and typing a name such as
      <tt>projects</tt> will, once the <i>Create</i> button has been
      pressed, cause the mail folder listing to change to include the
      newly created mail folder.
      </li>  
      <li>Once the folder has been created, select its name or the
          folder icon by its name.
        </li>
      </ul>
</li>
</ul>

<p>The message is copied into the destination folder and you are returned to
the message display screen
where the status line will be updated, for example:- </p>

<table>
<tr class="t_status">
<td><b>Status:</b> Copied message 12 to mail/saved-messages</td>
</tr>
</table>

<p>The banner line above and below the message also changes to indicate that 
the original copy is now marked as deleted, for example:-</p>

<table style="width: 100%">
<tr class="t_banner">
<td><table>
    <tr>
    <td>
      <a href="#List"><img src="<% left |i %>" alt="Previous" /></a>
     </td>
    <td><img src="<% right-inactive |i %>" alt="Next" /></td>
    <td>|</td>
    <td><a href="#List">Copy</a></td>
    <td>|</td>
    <td><a href="#List">Undelete</a></td>
    <td>|</td>
    <td><a href="#List">Mark</a></td>
    <td>|</td>
    <td><a href="#List">Reply</a></td>
    <td>|</td>
    <td><a href="#List">Forward</a></td>
    </tr>
    </table>
</td>
<td align="center"><strong>Message: 12 out of 12</strong></td>
</tr>
</table>

<p>When you return to the mailbox list screen the display is also updated 
to show the status of the message as deleted.
</p>

<h2><a name="Actions">The bars above and below the folder listing</a></h2>

<table>
<tr>
<td valign="top"><i>Cancel</i></td>
<td>returns you to the message display page, without saving
the message into any folder.</td></tr>
<tr>
 <td valign="top"><i>Refresh</i></td>
 <td> checks the contents of the directory on the server.</td>
</tr>
</table>
