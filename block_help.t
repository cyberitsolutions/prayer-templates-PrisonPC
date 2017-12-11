%# $Cambridge: hermes/src/prayer/templates/cam/block_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>This screen enables you to set up a list of sender addresses which you
wish to blacklist. Any addresses sent from these addresses will be silently
discarded.</p>

<p>If you have blocks in place that have been created either using
the Webmail system or using the standard configuration options from the
menu interface on <% $g_service_name |h %> then when you enter
this screen they will be listed, as in the example below.</p>

<ol>
<li><strong>BLOCK:</strong>
Blocking all messages from "spammer" at "spamdomain.com".
<a href="#Form">Remove this block.</a></li>
<li><strong>BLOCK:</strong>
Blocking all messages from "noone" at "nowhere.com".
<a href="#Form">Remove this block.</a></li>
</ol> 

<p>If you have filters created using the advanced configuration option from
the menu interface on <% $g_service_name |h %> then your filters should
continue to be maintained in that way.  Consequently the screen will not
display the list of existing filters.  Instead the following message will
be shown:</p>

<blockquote>
<div>
<b>Error:</b> Manually maintained .forward file?
</div>
</blockquote>

<h2>Adding a filter</h2>

<h3>Entering the address</h3>

<p>Blocks are on the envelope sender address (a copy of which appears in the
message as a header "Return-Path") address rather than the more obvious
"From:". These two headers frequently have the same value, however this is
rarely the case with junk email. Mailing lists often alter the
Return-Path address to something that is specific to the list. You can find
the "Return-Path:" for a particular message by using <i>Show Hdrs</i> on
the message display screen.</p>

<p>The following wildcards can be used:-</p>
<blockquote>
<div>
  '?' matches a single character <br />
  '*' matches any number of characters<br />
</div>
</blockquote>
<p>Hence the following are all valid entries:-</p>
<blockquote>
<div>
spammer@spamdomain.com <br />
*@jiscmail.ac.uk  <br />
?art? <br />
</div>
</blockquote>
<p>If an invalid address is been provided the status message will provide
information.  For example if you enter just <tt>Spammer</tt> will result in
the status line entry</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> 
Invalid filter: Not a valid <% $g_service_name |h %> account and no domain provided</td>
</tr></table>
<p>and the invalid entry will be cleared from the entry field.</p>

<h3>The effect of the <i>Add filter</i> button</h3>

<p>When you select the <i>Add filter</i> button, the status message will
change to</p>
<table>
<tr class="t_status"> <td align="left"><b>Status:</b> Added BLOCK filter</td></tr>
</table>
<p>and the list will be updated to display the new block.</p>

<h2>Removing a block</h2>

<p>To remove a block simply select the link <i>Remove this block</i>
by the relevant filter. The status message will change to show which
filter was removed, for example</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> Removed block number: 1</td>
</tr></table>
<p>and the block list will be updated on screen.</p>
