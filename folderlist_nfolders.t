%# $Cambridge: hermes/src/prayer/templates/cam/folderlist_nfolders.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%       IFEQ $_cmd "filter_select"
<td>
 <a href="<% filter_mbox/copy/${_name|c} |s %>">Select (save copy to inbox)</a>
</td>
<td>
 <a href="<% filter_mbox/nocopy/${_name|c} |s %>">Select (no copy)</a>
</td>
%       ELSE
%         IFEQ $_cmd "sizes"
<td><% $_size |h %></td>
%         ELSE
<td></td>
%         ENDIF
%       ENDIF
