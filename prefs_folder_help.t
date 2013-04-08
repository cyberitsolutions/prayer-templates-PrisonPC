%# $Cambridge: hermes/src/prayer/templates/cam/prefs_folder_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />
<ul>
<li><i>Suppress dotfiles (files starting '.') from folder listing</i> -
      unchecking this will show all your files and mail folders, 
      including the files that are normally hidden.  Files whose name
      starts with a '.' are normally in your home directory, and 
      include configuration files such as the addressbook used by 
      Pine (<tt>.addressbook</tt>)</li>
<li><i>Confirm folder deletion</i> - If this is unchecked then
     selecting the <i>Delete</i> button against a mail folder
    name on the <i>Folders</i> screen deletes that folder 
    immediately without asking for confirmation.</li>
<li><i>Mail directory</i> - controls
     which directory is the default for mail folders. The default is
     the <tt>mail</tt> subdirectory of your home directory.  Some
     mail clients (for example Outlook Express) use the home 
     directory by default.  If you 
     habitually use one of these clients then you may need to consider 
     making this field blank.</li>
<li><i>Sent Mail Folder</i> - controls which folder is used to hold
     copies of outgoing mail.
    Again, if you habitually use a mail client that has a different
   convention you may wish to change this preference, for example if
   you are an habitual Outlook Express user you may wish to change it
    to:- 
    <form action="<% action_stub |s %>">
    <table>
    <tr>
      <td>Sent Mail Folder:</td><td><input name="sent_mail_folder" value="Sent Mail" size="20" /></td>
    </tr>
    </table>
    </form>
   </li>
<li><i>Postponed Messages Folder</i> controls which folder is used to
    store a message that you wish to postpone and return to later.</li>
</ul>
