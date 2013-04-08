%# $Cambridge: hermes/src/prayer/templates/cam/list_nav_2.t,v 1.2 2008/10/03 11:25:51 dpc22 Exp $
%#
<td class="nav_r">
<a href="<% checkpoint |s %>">
Refresh</a> |
<a href="<% expunge |s %>">
Expunge</a> |
% IFDEF $use_persist
%   IFDEF $have_marked
<a href="<% unmark/all |s %>">
Unmark All</a> |
%   ELSE
<a href="<% mark/all |s %>">
Mark All</a> |
%   ENDIF
%   IFDEF $have_zoom
<a href="<% zoom |s %>">
Unzoom</a> |
%   ELSE
<a href="<% zoom |s %>">
Zoom</a> |
%   ENDIF
% ELSE
%   IFDEF $have_marked
<a href="<% unmark/all |s %>">
Clear Search</a> |
%   ENDIF
% ENDIF
<a href="<% search |s %>">
Search</a>
</td>
