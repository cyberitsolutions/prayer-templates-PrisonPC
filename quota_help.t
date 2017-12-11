%# $Cambridge: hermes/src/prayer/templates/cam/quota_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>This screen shows you information about your disk space quota on
<% $g_service_name |h %>.  It looks something like:-</p>

<p>The information returned shows:-</p>
<ul>
<li><i>File Quota</i> - the number of files in the <% $g_service_name |h %> filestore.</li>
<li><i>Block Quota</i> - the amount of disk space used in the  <% $g_service_name |h %> filestore</li>
<li><i>Mailstore Quota</i> - the amount of disk space used in the
<% $g_service_name |h %> mailstore</li>
</ul>

<p>Warning messages are sent when an account reaches 90% and 95% of quota
in either the filestore or mailstore. The Mailstore limit is the one most
likely to be reached in normal operation.</p>
