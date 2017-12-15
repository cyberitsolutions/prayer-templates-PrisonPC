%# $Cambridge: hermes/src/prayer/templates/cam/folderlist_icons.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%# Common code shared by the various folder list screens.
%#
<table class="altrows">
% FOREACH $f @folder
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
%     IFDEF $f->expanded
 <a href="<% ${cmd}/toggle/${f->name|c} |s %>"><img src="<% ic_expand_more |i %>" alt="<% $g_alt_pad |n %>" /></a>
%     ELSE
 <a href="<% ${cmd}/toggle/${f->name|c} |s %>"><img src="<% ic_chevron_right |i %>" alt="<% $g_alt_pad |n %>" /></a>
%     ENDIF
%   ELSE
 <img src="<% blank |i %>" alt="<% $g_alt_pad |n %>" />
%   ENDIF
%   IFDEF ${fcmd}
%     IFNDEF $f->noselect
 <a href="<% ${fcmd}/${f->name|c} |s %>">
 <img src="<% ic_folder |i %>" alt="[mailbox]" /></a>&nbsp;
 <a href="<% ${fcmd}/${f->name|c} |s %>"><% ${f->short_name|7} |h %></a>
%     ELSE
 <img src="<% blank |i %>" alt="<% $g_alt_pad |n %>" />
 <% $f->{short_name|7} |h %>
%     ENDIF
%   ELSE
 <img src="<% ic_folder |i %>" alt="[mailbox]" />&nbsp;
 <% $f->{short_name|7} |h %>
%   ENDIF
</td>
%#
%# XXX Getting rather messy: better factoring please
%#
%   IFEQ $cmd "folders"
%     IFNDEF $f->noselect
%       CALL folderlist_folders, $_name => $f->name, $_type => "mailbox"
%     ELSE
%       CALL folderlist_folders, $_name => $f->name, $_type => "directory"
%     ENDIF
%   ELSE
%     IFNDEF $f->noselect
%       CALL folderlist_nfolders,
%              $_name => $f->name, $_size => $f->size, $_cmd => $cmd
%     ELSE
%       IFEQ $cmd "filter_select"
<td></td><td></td>
%       ELSE
<td></td>
%       ENDIF
%     ENDIF
%       
%   ENDIF
</tr>
% ENDFOREACH
</table>

