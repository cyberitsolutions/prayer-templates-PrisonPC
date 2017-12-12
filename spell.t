%# $Cambridge: hermes/src/prayer/templates/cam/spell.t,v 1.2 2010/07/02 15:49:28 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Spell Check</h2>
<form method="get" accept-charset="UTF-8" action="<% spell |s %>">
<table><tr>
<td><input type="submit" name="cancel" value="Cancel" /></td>
% IFDEF $have_changes
<td><input type="submit" name="apply" value="Apply changes to date" /></td>
% ENDIF
</tr></table>
<p>Couldn't find highlighted word in following text:</p>
<pre>
<% $text |n %>
</pre>
<p>Options:</p>
<ol><li><a href="<% spell?add=${word|u} |s %>">
Add word</a> to personal dictionary</li>
<li><a href="<% spell?accept=${word|u} |s %>">
Accept this spelling</a> for current spell-check run only</li>
<li><a href="<% spell?leave=${word|u} |s %>">
Leave word</a> with current spelling, query further occurrences</li>
% IFNEQ $close_count 0
<li>Replace word with close match from dictionary 
%   IFNEQ $close_count 1
(<% $close_count |h %> matches found)
%   ELSE
(1 match found)
%   ENDIF
<table>
<tr>
%   FOREACH $w @close
<td>
<a href="<% spell?replace=${w->word|u} |s %>"><% $w->word |h %></a>&nbsp;
</td>
%     IFDEF $w->break
</tr><tr>
%     ENDIF
%   ENDFOREACH
</tr>
% ENDIF
</table>
</li>
<li>Replace with specific text:
<input name="replace" value="" size="32" />
<input type="submit" name="submit" value="Replace" />
</li>
</ol>
</form>
% CALL container_end
% CALL footer
