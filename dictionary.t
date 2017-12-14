%# $Cambridge: hermes/src/prayer/templates/cam/dictionary.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Personal Dictionary Maintenance</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% dictionary |s %>">
% IFDEF $words[0]
<p>Personal Dictionary (click links to remove entries):</p>
<table style="width: 100%">
<tr>
%   FOREACH $w @words
<td><a href="<% dictionary?remove=$w->word |s %>"><% $w->word |h %></a></td>
%     IFDEF $w->break
</tr><tr>
%     ENDIF
%   ENDFOREACH
</tr></table>
% ELSE
<p>Personal Dictionary (currently empty)</p>
% ENDIF
<p>Add or remove specific words from the list:</p>
<table><tr><td><input name="add" value="" size="32" /></td>
<td><input type="submit" name="sub_add" value="Add" /></td>
</tr><tr>
<td><input name="remove" value="" size="32" /></td>
<td><input type="submit" name="sub_remove" value="Remove" /></td>
</tr></table></form>
% IFDEF $g_help
%   CALL dictionary_help
% ENDIF
% CALL container_end
% CALL footer
