%# $Cambridge: hermes/src/prayer/templates/cam/rename_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<h2> Renaming a mail folder.</h2>

<p>The layout of the screen is similar to that in the main
<i>Mail Folders</i> screen.</p>
<ul>
<li>The list of mail folders.</li>
<li>The second form 
<form action="<% action_stub |s %>">
<table><tr class="t_banner"><td>
Rename under <select name="parent" size="1">
<option value="">&lt;Root&gt;</option>
</select>
 as
new name<input name="name" value="" size="16" />
<input type="submit" name="submit" value="Rename" />
<input type="submit" name="cancel" value="Cancel" />
</td></tr></table>
</form>
is where you enter the new name of the mail folder. 
  <ul>
  <li> Selecting the <i>Rename</i> button will return you to the 
      mail folder listing screen, with the renamed folder listed.
     The <i>Status</i> line will be updated 
     <table><tr class="t_status"><td>
     <b>Status:</b> Renamed mailbox mail/sent-mail to be mail/old-sent-mail
      </td></tr></table>
  </li>
  <li>
   Selecting <i>Cancel</i> returns you to the main mail folder
   listing screen and no changes are made.
  </li>
  </ul>
</li>
</ul>
