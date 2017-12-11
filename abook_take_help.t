%# $Cambridge: hermes/src/prayer/templates/cam/abook_take_help.t,v 1.2 2008/09/17 21:37:52 dpc22 Exp $
<hr class="helpsep" />

<p>This screen is reached when you click on one of the addresses displayed
at the top of a message that is being displayed. It is also reached if you
add an address to your addressbook from the directory search screen.  The
screen is a shortcut allowing you to add addresses directly to your personal
addressbook.</p>

<ul>
<li>To create an entry complete the fields and then select
<i>Add entry</i></li>
<li>To return to the Webmail screen from whence you came, making no
changes to your address book, select the <i>Cancel</i> button</li>
</ul>

<h2>The address book form fields</h2>

<ul>
<li><i>Alias</i> - the nickname by which the entry is known.  This 
     can be used as an address shortcut when composing a message.</li>
<li><i>Name</i> - this is an optional field, but is customarily 
    used for the real name of an individual or a relevant name 
    for a list.
    The entry in this field will appear in any message sent
    using the alias.</li>
<li><i>Comment</i> - optional - usually used as a short, relevant memory 
    jogger for example "Contact at This Company Ltd.".  It does not 
    appear in any message sent using the alias.</li>
<li><i>Address(es)</i> 
    <ul>
    <li> In most cases this will be a single address, as in the
         example shown at the top of this page.</li>
    <li> However you can also use the Addressbook to create an entry for 
         a small group of people.
         In this case the Address field can either be 
         full email addresses of the group members
         or the aliases of existing addressbook entries.
         Addresses must be separated by commas.
       </li>
    </ul>
</li>
</ul>

<p>Hence the following examples would all be be valid entries. <br />
<b>Note:</b> that the final entry uses existing alias entries, not full
email addresses.  Remember that you can only use this form of short
address if you have an entry for the individual alias.  </p>

<table class="data"><tr>
<th align="left">Alias</th>
<th align="left">Name</th>
<th align="left">Comment</th>
<th align="left">Address(es)</th>
<th align="left">&nbsp; </th>
</tr>
<tr>
<td><a href="#List">someone</a></td>
<td>A. Person</td>
<td>Sales contact at Somewhere Company</td>
<td>someone@somewhere.com</td>
<td><a href="#List">Compose fresh message</a></td>
</tr>
<tr>
<td><a href="#List">alien</a></td>
<td>Green Alien</td>
<td>&nbsp;</td>
<td>alien@planet.otherdomain.com</td>
<td><a href="#List">Compose fresh message</a></td>
</tr>
<tr>
<td><a href="#List">group</a></td>
<td>&nbsp; </td>
<td>Small group</td>
<td>person@company.co.uk, anotherperson@company.co.uk</td>
<td><a href="#List">Compose fresh message</a></td>
</tr>
<tr>
<td><a href="#List">group2</a></td>
<td>&nbsp; </td>
<td>&nbsp; </td>
<td>someone, alien </td>
<td><a href="#List">Compose fresh message</a></td>
</tr>
</table>
