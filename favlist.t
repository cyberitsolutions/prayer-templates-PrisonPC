%# $Cambridge: hermes/src/prayer/templates/cam/favlist.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%#
<table class="altrows">
% FOREACH $f @g_favourites
%   IFDEF $f->even_row
<tr class="t_even_row">
%   ELSE
<tr class="t_odd_row">
%   ENDIF
<td style="width: 50%" >
%   LOOP $f->indent
 <img src="<% blank |i %>" alt="<% $g_alt_pad |n %>" />
%   ENDLOOP
%   IFDEF $f->haschildren
 <a href="<% ${cmd}/toggle/${f->name|c} |s %>">
%     IFDEF $f->expanded
 <img src="<% down |i %>" alt="<% $g_alt_pad |n %>" />
%     ELSE
 <img src="<% right |i %>" alt="<% $g_alt_pad |n %>" />
%     ENDIF
 </a>
%   ELSE
 <img src="<% blank |i %>" alt="<% $g_alt_pad |n %>" />
%   ENDIF
%   IFDEF ${fcmd}
 <a href="<% ${fcmd}/${f->name} |s %>">
 <img src="<% dir |i %>" alt="[mailbox]" /></a>&nbsp;
 <a href="<% ${fcmd}/${f->name|c} |s %>"><% ${f->name|7} |h %></a>
%   ELSE
 <img src="<% dir |i %>" alt="[mailbox]" />&nbsp;<% $f->{name|7} |h %>
%   ENDIF
</td>
%   IFEQ $cmd "favourites"
%     CALL favlist_favourites, $_name => $f->name, $_preferred => $g_preferred 
%   ELSE
%     IFEQ $cmd "transfer"
<td><a href="<% download_xfer/${$f->name|c} |S %>">Download</a></td>
%     ENDIF
%   ENDIF

</tr>
% ENDFOREACH
</table>

