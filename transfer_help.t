%# $Cambridge: hermes/src/prayer/templates/cam/transfer_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>Transfer allows you to upload a local mail folder to
<% $g_service_name |h %> or download a mail folder from
<% $g_service_name |h %> to your local machine.
</p>

<p>The layout of the screen is similar to that in the main
<i>Mail Folders</i> screen.  If you have any <i>Favourite Folders</i> these
will be listed below the <i>INBOX</i> and above the main folder.</p>

<p>The top and bottom bars have common elements at the right hand side:-</p>
<table>
<tr>
<td><i>Cancel</i></td> 
<td> returns you to the main <i>Mail Folder</i> screen,
     and no actions are taken.</td>
</tr>
<tr>
<td><i>Refresh</i></td>
<td>checks the contents of the directory on <% $g_service_name |h %>.</td>
</tr>
</table>

<p>The Right arrow <img src="<% right |i %>" alt="[dir]" /> 
indicates a sub-directory which can be expanded.</p>

<h2> <a name="Select">Downloading a folder</a> </h2>

<p>To download a folder (transfer a mail folder from
<% $g_service_name |h %> to your local machine) select the Folder icon
<img src="<% dir |i %>" alt=" " />
or the <i>Download</i> action by your chosen mail folder 
then use your browser's "Save" feature to navigate to where you wish to 
put the folder on your local machine. 
</p>

<h2> Uploading a folder </h2>

<p>To upload a folder (transfer from your local machine to the directory
you are in on <% $g_service_name |h %>) use the form at the bottom of the
page:-</p>

<form action="<% action_stub |s %>">
<table>
<tr class="t_banner">
<td> File <input type="file" name="file" />
<input type="submit" value="Upload" /></td>
</tr>
</table>
</form>

<p>You can type in the name of a mail folder or use the <i>Browse...</i>
button to select one.  Once you have chosen a mail folder to transfer
select the <i>Upload</i> button.</p>
