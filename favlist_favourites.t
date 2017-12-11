%# $Cambridge: hermes/src/prayer/templates/cam/favlist_favourites.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<td>
 <a href="<% unsubscribe/${_name|c} |s %>">Remove from Favourites</a>
</td>
% IFEQ $_name $_preferred
<td>Current Preferred</td>
% ELSE
<td>
 <a href="<% preferred/${_name|c} |s %>">Make Preferred</a>
</td>
% ENDIF
