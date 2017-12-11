%# $Cambridge: hermes/src/prayer/templates/cam/spam.t,v 1.2 2009/04/07 12:01:48 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Junk Email (Spam) Filtering</h2>

<p>This option automatically files mail based on how much it looks
like junk email (spam).</p>
<p>Each message is given a score which is higher if the message has
more spam-like features. You pick a threshold score above which
messages are filtered to a folder named &quot;spam&quot;. Thresholds
of 10 or more have no effect because high-scoring email is blocked.
Thresholds of 4 or less are likely to misclassify legitimate email as
spam. The scoring system is tuned to work best with a threshold of
5.</p>

<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% spam |s %>">
<table>
<tr>
<td>Filter threshold:</td>
<td><input name="spam_threshold" value="<% $spam_threshold |h %>" size="5" /></td>
% IFDEF $spam_enabled
<td>(currently enabled)</td>
% ELSE
<td>(currently disabled)</td>
% ENDIF
</tr>
<tr>
<td>
% IFDEF $spam_purge_enabled
 <input type="checkbox" name="spam_purge" value="1" checked="checked" />
% ELSE
 <input type="checkbox" name="spam_purge" value="1" />
% ENDIF
% IFDEF $using_sieve
 Purge after:</td>
<td><input name="spam_purge_timeout"
 value="<% $spam_purge_timeout |h %>" size="5" /></td>
<td>days</td>
% ELSE
</td>
% ENDIF
</tr>
</table>
<table><tr>
<td style="vertical-align: middle">Whitelist (one address per line):</td><td>
<textarea name="spam_whitelist"
 rows="8" cols="40"><% $spam_whitelist |h %></textarea>
</td></tr></table>
<table>
<tr>
<td><input type="submit" name="sub_cancel" value="Back to Options Screen" /></td>
<td><input type="submit" name="sub_disable" value="Disable Filtering" /></td>
<td><input type="submit" name="sub_enable"
     value="Enable Filtering with this threshold" /></td>
</tr>
</table>
</form>
% IFDEF $g_help
%   CALL spam_help
% ENDIF
% CALL container_end
% CALL footer
