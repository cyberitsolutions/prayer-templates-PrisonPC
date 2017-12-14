%# $Cambridge: hermes/src/prayer/templates/cam/list_nav_2.t,v 1.2 2008/10/03 11:25:51 dpc22 Exp $
%#
<td class="nav_r">
<a href="<% checkpoint |s %>"><button type="button">Refresh</button></a>
<a href="<% expunge |s %>"><button type="button">Expunge</button></a>
% IFDEF $use_persist
%   IFDEF $have_marked
<a href="<% unmark/all |s %>"><button type="button">Unmark All</button></a>
%   ELSE
<a href="<% mark/all |s %>"><button type="button">Mark All</button></a>
%   ENDIF
%   IFDEF $have_zoom
<a href="<% zoom |s %>"><button type="button">Unzoom</button></a>
%   ELSE
<a href="<% zoom |s %>"><button type="button">Zoom</button></a>
%   ENDIF
% ELSE
%   IFDEF $have_marked
<a href="<% unmark/all |s %>"><button type="button">Clear Search</button></a>
%   ENDIF
% ENDIF
<a href="<% search |s %>"><button type="button">Search</button></a>
</td>
