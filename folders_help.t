%# $Cambridge: hermes/src/prayer/templates/cam/folders_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>
The Mail Folders screen allows you to either select a different mail
folder to view or to create, rename or delete mail folders 
(mailboxes) and directories.
The default set of mail folders on <% $g_service_name |h %> is <tt>INBOX</tt>,
<tt>sent-mail</tt> and <tt>received</tt>.</p>

<h2><a name="Actions">The bars above and below the folder listing</a></h2>

<form action="<% action_stub |s %>">
<table><tr class="t_banner"><td>
Create
<select name="type" size="1">
<option value="mailbox">mailbox</option>
<option value="directory">directory</option>
</select>
under <select name="parent" size="1">
<option value="">&lt;Root&gt;</option>
</select>
with name
<input name="name" />
<input type="submit" name="create" value="Create" />
</td></tr></table>
</form>

<p>This enables the creation of mail folders or directories.
For example selecting <i>mailbox</i> and typing a name such as
<tt>projects</tt> will, once the <i>Create</i> button has been pressed,
cause the display to change to include the newly created mail folder.
Mailboxes can be created under existing directories.
</p>

<table>
<tr>
 <td valign="top"><i>Refresh</i></td>
 <td> checks the contents of the directory on the <% $g_service_name |h %>.</td>
</tr>
<tr>
  <td valign="top"><i>Sizes</i></td>
  <td>shows you the size of each mailbox on the system</td>
</tr>
</table>

<h2> <a name="List">The folder listing</a> </h2>

<p>
You can keep all your mail in different folders in one directory, or you
can create a storage system of directories that contain mail folders (the
example given in this help text). While you can create mail folders in any
directory, you need to be aware that different mail clients default to
looking in different places.</p>

<ul>
<li> The Folder icon <img src="<% dir |i %>" alt="mailbox " /> 
 indicates that the line refers to a mail folder and
 also shows the name of the folder and actions that can be performed on
 that folder, for example:-
 <table style="width: 100%">
 <tr class="t_even_row">
 <td style="width: 50%"><a href="#List">
<img src="<% dir |i %>" alt="[mailbox]" /></a>
<a href="#List">saved-messages</a></td>
<td><a href="#List">Rename</a></td>
<td><a href="#List">Delete</a></td>
 </tr>
 </table>
  Selecting the folder icon or the name of the folder will display a
 listing of the messages in that folder.  To return to the folder
  listing screen again, select the <i>Folders</i> icon in the 
  common toolbar.<br />
  Other actions you can take on a mail folder are:-
  <ul>
  <li> <i>Rename</i> - takes you to a screen with a form allowing you
       to rename the mail folder.</li>
  <li> <i>Delete</i> - deletes the mail folder.  Selecting this
       leads to a screen where you need to choose to confirm or cancel
       the deletion.  Once the mail folder is deleted 
       the display of the mail folders is updated and the <i>Status</i>
       information reflects the success of the action, for example<br />
       <table>
      <tr class="t_status">
      <td><b>Status:</b>             
      Deleted mailbox: "mail/newtest"</td>
      </tr></table>
 </li>
  </ul>
</li>
<li> The <i>Right arrow</i> 
   <img src="<% right |i %>" alt="[dir]" />
  indicates that the line refers to a directory,
  and shows the name of the directory and the actions that can be
  performed, for example:-
 <table style="width: 100%">
 <tr class="t_even_row">
 <td style="width: 50%"><a href="#List"><img src="<% right |i %>" alt="[directory]" /></a><a href="#List">testdir</a></td>
<td><a href="#List">Rename</a></td>
<td><a href="#List">Delete</a></td>
 </tr>
 </table>
 Selecting the arrow, or the name of the directory, will display a
 listing of the mail folders in that directory.   <br />
 The other actions are
  <ul>
  <li> <i>Rename</i> - takes you to a screen with a form allowing you
       to rename the directory.</li>
  <li> <i>Delete</i> - deletes the directory.   Selecting this
       leads to a screen where you need to choose to confirm or cancel
       the deletion.<br /> 
       <strong>Note:</strong> You can only delete a
       directory if it has no mail folders inside it.  If the
       deletion is not successful the <i>Status</i> information 
       reflects the reason, for example if you try to delete
      a non-empty directory the message is:-<br />
      <table>
      <tr class="t_status">
      <td><b>Status:</b> 
      DELETE failed: Can't delete mailbox mail/testdir/: File exists</td>
      </tr></table>
       </li>
  </ul>
</li>
</ul>
