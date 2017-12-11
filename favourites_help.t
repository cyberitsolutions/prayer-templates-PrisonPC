%# $Cambridge: hermes/src/prayer/templates/cam/favourites_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>
The Favourites screen allows you to define a list of favourite mail
folders.  This list appears in the pull-down listing in the common toolbar,
replacing the list of default folders.  Once you have one or
more <i>Favourite mail folders</i> an expanded set of actions becomes
available on the <i>Message List</i> screen.</p>

<p>The layout of the screen is similar to that in the main
<i>Mail Folders</i> screen.</p>

<table>
<tr>
<td><i>Cancel</i></td> 
<td> returns you to the main <i>Mail Folder</i> screen,
     and no actions are taken.</td>
</tr>
<tr>
<td><i>Refresh</i></td>
<td>checks the contents of the directory on the server.</td>
</tr>
</table>

<p>Use <img src="<% right |i %>" alt="[Expand]" /> to
expand collapsed directories.</p>

<h2> <a name="Select">Selecting favourites</a> </h2>

<p>The Folder icon <img src="<% dir |i %>" alt="mailbox " />
 indicates that the line refers to a mail folder, and also shows the
 name of the folder and actions that can be performed on that folder.
 To make a folder a favourite simply use the <i>Add to Favourites</i>
 button by the chosen folder.</p>

<h2><a name="Favourites">Using favourites</a></h2>

<p>Once you have selected one or more folders to <i>Add to
Favourites</i> the status line is updated, for example </p>
<table>
<tr class="t_odd_row">
<td align="left"><b>Status:</b>
Added mail/test-folder to favourites list</td>
</tr></table>
<p>and the mail folder listing changes and will look something like 
the following:-</p>

<hr class="helpsep" />
<h2 style="text-align: center">Favourite mail folders</h2>

<table style="width: 100%"><tr class="t_banner">
<td align="right"><table><tr>
<td><a href="#Select">Cancel</a></td>
<td>|</td>
<td><a href="#Select">Refresh</a></td>
</tr></table></td></tr></table>

<table style="width: 100%">
<tr>
<td style="width: 50%"><img src="<% dir |i %>" alt="[mailbox]" />
INBOX</td>
<td  style="width: 25%"><a href="#Using"> Make Preferred</a> </td>
<td style="width: 25%">&nbsp;</td></tr>
<tr class="t_banner"><td>Favourite mail folders:</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr class="t_even_row">
<td> <img src="<% dir |i %>" alt="[mailbox]" />
mail/mailing-listA</td>
<td><a href="#Using">Remove from Favourites</a></td>
<td><a href="#Using">Make Preferred</a></td>
</tr>
<tr class="t_odd_row">
<td> <img src="<% dir |i %>" alt="[mailbox]" />
mail/test-folder</td>
<td><a href="#Using">Remove from Favourites</a></td>
<td><a href="#Using">Make Preferred</a></td>
</tr>
<tr class="t_banner"><td>Folder list:</td><td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr class="t_even_row">
<td><img src="<% dir |i %>" alt="[mailbox]" />
mailing-listA</td>
<td><a href="#Select">Add to Favourites</a></td>
<td>&nbsp;</td></tr>
<tr class="t_odd_row">
<td><img src="<% dir |i %>" alt="[mailbox]" />
received</td>
<td><a href="#Select">Add to Favourites</a></td>
<td>&nbsp;</td></tr>
<tr class="t_even_row">
<td><img src="<% dir |i %>" alt="[mailbox]" />
saved-messages</td>
<td><a href="#Select">Add to Favourites</a></td>
<td>&nbsp;</td></tr>
<tr class="t_odd_row">
<td><img src="<% dir |i %>" alt="[mailbox]" />
sent-mail</td>
<td><a href="#Select">Add to Favourites</a></td>
<td>&nbsp;</td></tr>
<tr class="t_even_row">
<td><img src="<% dir |i %>" alt="[mailbox]" />
test-folder</td>
<td><a href="#Select">Add to Favourites</a></td>
<td>&nbsp;</td></tr>
<tr class="t_odd_row">
<td>
<a href="#Select"> <img src="<% right |i %>" alt="[directory]" /></a>
<a href="#Select">testdir</a></td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
</table>
<table style="width: 100%"><tr class="t_banner"><td align="right"><table><tr>
<td><a href="#Select">Cancel</a></td>
<td>|</td>
<td><a href="#Select">Refresh</a></td>
</tr></table></td></tr></table>


<hr class="helpsep" />

<p>The <i>Make Preferred</i> option allows you to select one mail folder
as a dominant favourite.  Once you have selected this, the listing for
that folder changes, for example selecting the <i>mail/test-folder</i>
mail folder changes that line to:- </p>

<table style="width: 100%">
<tr class="t_even_row">
<td style="width: 10%"><img src="<% dir |i %>" alt="[mailbox]" /></td>
<td  style="width: 40%"> mail/test-folder</td>
<td  style="width: 25%"><a href="#Select">Remove from Favourites</a></td>
<td  style="width: 25%"><a href="#Select"></a>Current Preferred</td>
</tr>
</table>

<p>If you subsequently wish to change your <i>Preferred</i> folder,
simply select a different folder to <i>Make Preferred</i>.</p>

<p>Having a <i>Preferred</i> folder means that that becomes the default
folder listed in the pull-down listing in the common toolbar.</p>
