%# $Cambridge: hermes/src/prayer/templates/cam/spam_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>This option filters messages based on how much they look like junk email
(otherwise known as spam) according to a score that is computed by applying
a large number of tests to each message and calculating an overall
result. Since it isn't possible to decide on technical grounds precisely
whether an email is spam or not, the score is heuristic: a higher score
means the message is more likely to be spam.</p>

<p>You pick a threshold score above which messages are filtered to a
separate <strong>spam</strong> folder, which you should check
periodically (once a week, say) for misfiled email. If you set a low
threshold (below 5) then it is likely to misclassify legitimate
messages as spam. Messages that score 10 or more are blocked instead
of being delivered, so high thresholds have no effect.</p>

<p>We recommend setting the threshold to 5 at first, and adjusting it
if necessary. For example, the filter is most accurate for English
email so if you exchange a lot of foreign-language email you may have
to use a higher threshold.</p>

<p>The purge option (if available and enabled) defines the number of days
that mail remains in your spam folder before it is automatically
deleted by an overnight job. The default is 60 days.</p>

<p>The whitelist section is a list of sender addresses (one on each
line) which will bypass the spam filter. Wildcard characters are
allowed: '?' matches any single character, while '*' matches any
number of characters.</p>
