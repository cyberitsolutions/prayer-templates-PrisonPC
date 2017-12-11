%# $Cambridge: hermes/src/prayer/templates/cam/search_text_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>The Search screen allows you to select a set of messages from the
current mail folder using different criteria.  After you have selected your
messages you can take action on them, for example, <i>Mark</i> them all and
copy them all to the same folder.</p>

<p>After the initial search has been made it is possible to add another
criterion to refine the selection.</p>

<p> Text searching allows messages to be selected depending on whether
a part of the message <i>Contains</i> or <i>Does not contain</i>
the entered string.  It is not case sensitive,  e.g. choosing
<tt>web</tt> will match both <tt>web</tt> and <tt>Web</tt>.
The parts (fields) that can be chosen are:</p>
<ul>
<li><i>From</i></li>
<li><i>To</i></li>
<li><i>Cc</i></li>
<li><i>Recipient</i> - 
   messages with Cc: or To: headers containing the entered string will
   be selected.</li>
<li><i>Participant</i> -
    messages with Cc:, To:, or From: headers containing the string will
    be selected. </li>
<li><i>Subject</i></li>
<li><i>Text (Expensive!)</i> - 
    this searches all the body text.  
    Please avoid this wherever possible. It puts a heavy strain on 
    <% $g_service_name |h %>.</li>
</ul>

<p> Your string does not have to be a complete word or phrase.  
A search on the <i>Subject</i> string could contain </p>
<form action="<% action_stub |s %>">
<table> 
<tr>
<td><select name="text_key" size="1"><option value="subject">Subject</option></select> </td>
<td><select name="text_op" size="1"><option value="match">Contains</option> </select></td>
<td><input name="text_value" value="cat" size="30" /></td>
</tr>
</table>
</form>
<p>When you are searching using an address you do not have to enter the
full address, you can use any unique element of that address. Examples are</p>
<form action="<% action_stub |s %>">
<table> 
<tr>
<td><select name="text_key" size="1"> <option value="from">From</option> </select> </td>
<td><select name="text_op" size="1"><option value="match">Contains</option> </select></td>
<td> <input name="text_value" value="A. Person" size="30" /> </td>
</tr>
</table>
</form>
<form action="<% action_stub |s %>">
<table>
<tr>
<td> <select name="text_key" size="1"> <option value="to">To</option> </select> </td>
<td><select name="text_op" size="1"><option value="match">Does not contain</option></select></td>
<td> <input name="text_value" value="somecompany.com" size="30" /> </td>
</tr>
</table>
</form>
<form action="<% action_stub |s %>">
<table>
<tr>
<td> <select name="text_key" size="1"> <option value="from">From</option> </select> </td>
<td><select name="text_op" size="1"><option value="match">Contains</option> </select></td>
<td> <input name="text_value" value="spqr99@cam" size="30" /> </td>
</tr>
</table>
</form>

<p> Once you have entered your string then choose <i>Search</i> and you
will return to the mail folder with just the selected message(s)
listed.</p>

