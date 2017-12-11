%# $Cambridge: hermes/src/prayer/templates/cam/filter_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>This screen enables you to set up basic filtering of incoming
messages. An example would be saving all messages from a particular address
into a nominated folder. If this is the first time you have used this then
on entry the screen will look like:-</p>

<p>If you have filters in place that have been created either using
the Webmail system or using the standard configuration options from the
menu interface on <% $g_service_name |h %> then when you enter
this screen they will be listed, as in the example below.</p>

<ol>
<li><strong>SENDER:</strong>
Filter messages from "spammer at spamdomain.com." 
<a href="#Form">Remove this filter.</a></li>
<li><ul><li>Store in mail folder: mail/spam</li></ul></li>
<li><strong>SUBJECT:</strong>
 Filter messages with subject of "test".
 <a href="#Form">Remove this filter.</a>
  <ul>
  <li>Store in mail folder:mail/test1</li>
  </ul>
</li>
</ol> 

<p>If you have filters created using the advanced configuration
option from the menu interface on <% $g_service_name |h %> then your filters
should continue
to be maintained in that way.  Consequently the screen will not
display the list of existing filters.  Instead  the following message
will be shown:</p>
<blockquote>
<div>
<b>Error:</b> Manually maintained Sieve file?
</div>
</blockquote>

<h2>Adding a filter</h2>

<h3>The options</h3>

<p>It is possible to:-</p>
<ul>
<li> <i>Filter on Sender:</i> - actually "Return-Path" rather than the
     more obvious "From:".<br /> 
   <b>Note:</b> These two headers frequently have the same
   value. However mailing lists often alter the Return-Path address to
   something that is specific to that list. You can find the "Return-Path:"
   line for a particular message by using <i>Show Hdrs</i> on the
   message display screen.  </li>
<li> <i>Filter on Recipient:</i> - the contents of the "To" and "Cc" 
        fields of a mail message.</li>
<li> <i>Filter on Subject:</i> - this option makes a case independent 
        match against the entire subject line. Use wildcards to make 
        a partial match.</li>
</ul>

<p>Messages are filtered into nominated mail folders other than the Inbox,
or a nominated mail folder as well as the Inbox.</p>

<h3>Entering the address or subject</h3>

<p>After making the initial choice the address or subject on which you want
to filter should be entered.  The following wildcards can be used:-</p>
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
<p>If an invalid entry is made the status message will provide information.
For example if you are filtering by sender address and enter just
<tt>Spammer</tt> will result in the status line entry</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> 
Invalid filter: Not a valid <% $g_service_name |h %> account and no domain provided</td>
</tr></table>
<p>and the invalid entry will be cleared from the entry field.</p>

<h3>The effect of the <i>Add filter</i> button</h3>

<p>When you selecting the <a name="Add"> <i>Add filter</i></a> button will
present you with a list of your mail folders so that you can select the
destination folder.</p>

<h2>Removing a filter</h2>

<p>To remove a filter simply select the link <i>Remove this filter</i>
by the relevant filter. The status message will change to show which
filter was removed, for example</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> Removed filter number: 1</td>
</tr></table>
<p>and the filter list will be updated on screen.</p>
