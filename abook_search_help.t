%# $Cambridge: hermes/src/prayer/templates/cam/abook_search_help.t,v 1.2 2008/09/17 21:37:52 dpc22 Exp $
<hr class="helpsep" />

<h2><a name="Select">The selection area</a></h2>

<h3>Simple Search</h3> 

<p>To perform a simple search, such as the example given above, 
select the field to search (the choice is
<i>Alias</i>, <i>Name</i>, <i>Comment</i>, <i>Address</i>) and 
then select the match criterion.  
Use <i>is</i> if you are sure of the exact term,
<i>begins</i>, <i>ends</i> and <i>contains</i> if you are either unsure,
or wish to retrieve a possibly wider selection.
Finally select the <i>Search</i> button.  </p>

<p>Selecting the link from the <i>Alias</i> column of the address you
are interested in brings up the relevant address book entry.</p>

<h3>Advanced Search</h3>

<p>After the initial search has been made it is possible to
extend the search term using the <i>Add condition</i> button and the
<i>any/all</i> toggle. Using <i>any</i> means that any entries
in the addressbook
that match one or more criteria are returned, using <i>all</i>
means that the addressbook entry must match all the specified
criteria.</p>


<p>The example below
was obtained by making an initial <i>Alias is</i> choice,
then selecting the <i>Add condition</i> button, choosing <i>any</i>,
entering the new criteria
(<i>Address contains</i>), and then selecting the <i>Search</i> 
button.</p>

<form action="<% action_stub |s %>">
Search for entries where 
<select name="cond" size="1">
<option value="any">any</option>
<option value="all">all</option>
</select>
of the following conditions hold
<table>
<tr>
<td>
<select name="key0" size="1">
<option value="alias">Alias</option>
<option value="name">Name</option>
<option value="comment">Comment</option>
<option value="email">Address</option>
</select>
</td>
<td>
<select name="op0" size="1">
<option value="is">is</option>
<option value="begins">begins</option>
<option value="ends">ends</option>
<option value="contains">contains</option>
</select>
</td>
<td>
<input name="val0" value="someone" size="30" />
</td>
</tr>
<tr>
<td>
<select name="key1" size="1">
<option value="alias">Alias</option>
<option value="name">Name</option>
<option value="comment">Comment</option>
<option value="email">Address</option>
</select>
</td>
<td>
<select name="op1" size="1">
<option value="is">is</option>
<option value="begins">begins</option>
<option value="ends">ends</option>
<option value="contains">contains</option>
</select>
</td>
<td>
<input name="val1" value="alien" size="30" />
</td>
</tr>
</table>
<table><tr>
<td><input type="submit" name="sub_search" value="Search" /></td>
<td><input type="submit" name="sub_add_cond" value="Add Condition" /></td>
</tr></table>
</form>
2 matches for those search criteria:
<table class="data">
<tr>
<th align="left">Alias</th>
<th align="left">Name</th>
<th align="left">Comment</th>
<th align="left">Address</th>
</tr>
<tr>
<td><a href="#Select">someone</a>
</td>
<td>A. Person</td>
<td>Sales contact at Somewhere Company</td>
<td>somone@somewhere.com</td>
</tr>
<tr>
<td><a href="#Select">alien</a></td>
<td>Green Alien</td>
<td>&nbsp;</td>
<td>alien@domain.otherplanet.com</td>
</tr>
</table>
