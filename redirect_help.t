%# $Cambridge: hermes/src/prayer/templates/cam/redirect_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>If you already have a redirection in place the form will show your
current settings, similar to the form above where all mail is
being redirected to <tt>somenewaddress@newplace.ac.uk</tt>, otherwise
the two check boxes will be unmarked and the address field
will be empty.</p>

<p>If you have a manually maintained <tt>.forward</tt> file this cannot
be updated from the Webmail interface.  In this case the you will not 
see the form but a message reading</p>
<blockquote>
<div>
<b>Error:</b> Manually maintained .forward file? 
</div>
</blockquote>
<p>To make changes to a manually maintained file you will need to connect
to <% $g_service_name |h %> using an SSH or Telnet client and use the menu interface.
</p>

<h3>If you do not already have a redirection in place</h3>

<p>To redirect your mail to a new address check the <i>Enable
Redirection</i> box and enter the new address in the <i>Redirect
address:</i> field.  Then select the <i>Apply</i> button.
If this is successful you will be returned to the main Account 
Management screen, and the status line will read</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> Updated redirection </td>
</tr>
</table>

<p>The address you use must be a complete, valid address of the 
form <tt>user@some.place.somewhere</tt>.
If it is not then, after you have selected <i>Apply</i>,
you will remain in the <i>Mail Redirection</i> screen and
the status message will read</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> 
Redirection Address must be single, simple and fully
qualified email address</td>
</tr>
</table>
<p><b>Note:</b> that the check is only that the address appears complete.
It cannot check the actual address, so errors in typing an
address will not be picked up. </p> 

<p>If you wish one copy of each message to go to the new address and one
copy to remain on <% $g_service_name |h %> then check the <i>Save copy in
this account</i> box.  <b>Note:</b> if you do this then you will need to
make sure that you regularly check and delete the copies on
<% $g_service_name |h %>, otherwise you may exceed your quota.</p>

<h3>If you already have a redirection in place</h3>

<p>If you wish to alter the <i>Redirect
address:</i> enter the new address and then select <i>Apply</i>. 
Optionally check the <i>Save copy in this account</i> box. <b>Note:</b>
if you do this then you will need to make sure that you regularly
check and delete the copies on <% $g_service_name |h %>,
otherwise you may exceed your quota.
The comments made above about the form of an address apply.</p>

<h3>Cancelling a redirection</h3>

<p>If you wish to cancel your redirection then uncheck the <i>Enable
Redirection</i> box and, if it is checked, the 
<i>Save copy in this account</i>.  Then select <i>Apply</i>. </p>

