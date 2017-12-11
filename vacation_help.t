%# $Cambridge: hermes/src/prayer/templates/cam/vacation_help.t,v 1.2 2010/07/02 08:31:08 dpc22 Exp $
<hr class="helpsep" />

<p>Using this option you can set a message that is automatically sent to
the sender of a message that is personally addressed to you.  Typically it
is used to alert a sender that you are away (not necessarily on vacation)
and will be replying after you return.</p>

<p>If you already have a vacation message in place the form will show
your current message and the <i>Enable Vacation Message</i> box will
be checked.</p>

<p>If you have a manually maintained Sieve file on <% $g_service_name |h %>
this cannot be updated from this interface.
In this case the you will not see the form but a status message 
reading</p>
<blockquote>
<div>
<b>Error:</b> Manually maintained Sieve file? 
</div>
</blockquote>
<p> To make changes to a manually maintained file you will need to connect
to <% $g_service_name |h %> using an SSH or Telnet client and use the menu interface.
</p>

<h3>Frequency</h3>

<p>Once a vacation message has been sent, no further vacation messages will
be sent to the address in question until the given number of days have
passed. Please note: This is true even if one vacation message is cleared
and a new vacation message is set up. This option does not automatically
clear your vacation message after the given number of days.</p>

<h3>Aliases</h3>

<p>Vacation messages are only sent out in response to "personal" messages
which have been sent directly to your <% $g_service_name |h %> account,
rather than via mailing lists or other means. This is determined by looking
to see whether your email address appears in the "To:" and "Cc:" headers of
a message.</p>

<p>The <i>Aliases</i> dialogue can be used to define a comma separated list
of additional email addresses which will trigger vacation messages in this
way.  This is normally used in conjunction with "friendly" email address
associated with an institution.</p>

<h3>Subject</h3>

<p>The subject line of messages which are sent out</p>

<h3>Setting up a vacation message</h3>

<p>If you do not already have a vacation message then check the
<i>Enable Vacation Message</i> box, enter your text into the form
immediately beneath it and finally select the <i>Apply</i> button.  You
will be returned to the main Account Management screen.</p>

<p>If you have a message and wish to change it just make the
relevant changes in the form and select the <i>Apply</i> button.</p>

<p>If you do not wish to save any changes then select <i>Cancel</i> at any
point and you will be returned to the main Account Management screen.</p>

<h3>Cancelling your vacation message</h3>

<p>Uncheck the <i>Enable Vacation Message</i> box and select the
<i>Apply</i> button.</p>
     
