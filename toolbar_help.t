%# $Cambridge: hermes/src/prayer/templates/cam/toolbar_help.t,v 1.2 2010/11/01 10:57:05 dpc22 Exp $
<hr class="helpsep" />
<h2 style="text-align: center">Help Text</h2>
<ul>
<li><a href="<% help/${g_cmd} |s %>">Click here to hide all help text</a></li>
<li><a href="<% help/${g_cmd}/toolbar |s %>">
Click here to hide help text about main toolbar</a></li>
</ul>
<hr class="helpsep" />
<p>The common toolbar appears at the top of most Email pages and provides 
shortcuts to the main Email functions. </p> 

<table>
<tr>
<td valign="top">
  <table>
  <tr><td>Message</td></tr>
  </table>
</td>
<td>
   <p>This icon will always return you to the current message.</p>
   <p>When you login, the first unread message in your inbox is the
      current message.  If you have no unread messages then
      the last message in your inbox is the current message.</p>
   <p>If you move to another folder then the last message in that 
      folder is the current message.</p>
   <p>In any folder, once you read a message that becomes the current 
      message.  For example, if you were reading message 6 of 8 in your 
      inbox, then move to another screen (e.g. by <i>Mailbox</i> or 
      <i>Folder</i>) then when you re-select <i>Message</i> message 6 is 
      displayed.</p>
</td>
</tr>
<tr>
<td valign="top">
  <table>
  <tr><td>Mailbox</td></tr>
  </table>
</td>
<td>This icon returns you to a listing of your currently
    selected mail folder.  By default this is your inbox.</td>
</tr>
<tr>
<td valign="top">
  <table>
  <tr><td>Folders</td></tr>
  </table>
</td>
<td>Select this to see a listing of your mail folders.
    You can select a different mail folder to view or you can 
    create, rename or delete mail folders and directories.
    You can also choose some of your mail folders to be "favourites", which
    will give you quick access to these folders, or you can transfer mail 
    folders between <% $g_service_name |h %> and your local system.</td>
</tr>
<tr>
<td valign="top">
  <table>
  <tr><td>Compose</td></tr>
  </table>
</td>
<td>Select this to start writing a new message. Normally this will
    take you straight to the message composition screen, but if you
    have any postponed messages you will be asked whether you want to
    edit one of these or start a new message.</td>
</tr>
<tr>
<td valign="top">
  <table>
  <tr><td>Addressbook</td></tr>
  </table>
</td>
<td>Selecting this leads you to the main addressbook listing screen  
    where you can edit, delete and add entries.  You can also 
    import your <% $g_service_name |h %> addressbook into the Email addressbook or
    export your Email addressbook for use in Pine on <% $g_service_name |h %>.</td>
</tr>
<tr>
<td valign="top">
  <table>
  <tr><td>Manage</td></tr>
  </table>
</td>
<td>Selecting this leads to screens that let you configure various 
   aspects of the Email system either for the current session or
   for every future session.
   These include preferences that affect the appearance of the system
   and defining a personal dictionary.</td>
</tr>
</table>

<table>
<tr>
<td valign="top">
  <table>
  <tr><td align="center" valign="top">Help</td></tr>
  </table>
</td>
<td>The Email system has specific help pages for each screen rather
    than an overall globally available system.  Selecting
    this icon on any screen takes you to the help text relevant to
    that screen.  When you are looking at a help text page this icon 
    changes to
    <table>
    <tr><td align="center" valign="top">Back</td></tr>
    </table>
    and using this takes you back to the screen you came from.
</td>
</tr>
<tr>
<td>
  <table>
  <tr><td align="center" valign="top">Logout</td></tr>
  </table>
</td>
<td>Selecting this will log you out of the Email system.  Please
    remember to use this to log out when you have finished a session
    rather than just leaving your session idle.</td>
</tr>
</table>

<h2>The status information </h2>

<p> This appears immediately below the toolbar and contains:-</p>
<ul>
<li>On the left <b>Status:</b> or <b>Reminder:</b> information. 
   Status messages give feedback about the last command issued. 
    These usually indicate whether an action was successful or not.  
    For example status messages for the <i>Folders</i> screen include:-
    <table>
      <tr class="t_status">
       <td><b>Status:</b> Switched to mailbox: mail/received</td>
      </tr>
      <tr class="t_status">
       <td> <b>Status:</b> Created mailbox: mail/test2</td>
      </tr>
      <tr class="t_status">
        <td><b>Status:</b> Deleted mailbox: mail/test</td>
     </tr>
     </table>
    The principal reminder is
    <table>
      <tr class="t_nstatus">
       <td><b>Reminder:</b> Logout when you have finished</td>
      </tr>
     </table>
</li>
<li>On the right, the account name of the user currently logged in.</li>
</ul>

<hr class="helpsep" />
