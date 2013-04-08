%# $Cambridge: hermes/src/prayer/templates/cam/list_msgs.t,v 1.4 2008/09/18 11:06:35 dpc22 Exp $
%#
% FOREACH $msg @list_msg
% IFDEF $msg->even_row
<tr class="t_even_row">
% ELSE
<tr class="t_odd_row">
% ENDIF
<td class="right"><strong><% $msg->num |h %>.</strong></td>
% IFDEF $use_persist
%   IFDEF $msg->is_marked
<td><a href="<% unmark/${msg->num}/${msg->uid} |s %>">\
%     IFDEF $g_use_icons
  <img src="<% on |i %>" alt="Yes" />
%     ELSE
Yes\
%     ENDIF
</a></td>
%  ELSE
<td><a href="<% mark/${msg->num}/${msg->uid} |s %>">\
%     IFDEF $g_use_icons
  <img src="<% off |i %>" alt="No" />
%     ELSE
No\
%     ENDIF
</a></td>
%   ENDIF
% ELSE
<td align="center">\
<input type="checkbox" name="<% ${msg->num}@${msg->uid} |n %>"\
%   IFDEF $page_all_marked
 checked="checked"\
%   ENDIF
 /></td>
% ENDIF
% IFDEF $g_use_icons
%   IFDEF $msg->is_deleted
<td><img src="<% msg-deleted |i %>" alt="" /></td>
%   ELSE
%     IFDEF $msg->is_answered
<td><img src="<% msg-answered |i %>" alt="" /></td>
%     ELSE
%       IFDEF $msg->is_seen
<td><img src="<% msg-seen |i %>" alt="" /></td>
%       ELSE
<td><img src="<% msg-unseen |i %>" alt="" /></td>
%       ENDIF
%     ENDIF
%   ENDIF
% ELSE
%   IFDEF $msg->is_deleted
<td>D</td>
%   ELSE
<td>&nbsp;</td>
%   ENDIF
%   IFDEF $msg->is_seen
<td>O</td>
%   ELSE
<td>N</td>
%   ENDIF
%   IFDEF $msg->is_answered
<td>A</td>
%   ELSE
<td>&nbsp;</td>
%   ENDIF
% ENDIF
<td><% $msg->date |h %></td>
<td>
 <a href="<% display/${msg->num}/${msg->uid} |s %>"><% $msg->full_dname |h %>
</a></td>
<td align="right"><% $msg->size |h %>
%   IFDEF $msg->has_attach
<img src="<% paperclip-small |i %>" alt="" />
%   ENDIF
</td>
<td>
 <a href="<% display/${msg->num}/${msg->uid} |s %>"><% $msg->full_subject |h %>
</a></td>
<td class="right">
% IFDEF $msg->is_deleted
 <a href="<% undelete/${msg->num}/${msg->uid} |s %>">Undelete</a></td>
% ELSE
 <a href="<% delete/${msg->num}/${msg->uid} |s %>">Delete</a></td>
% ENDIF
</tr>
% ENDFOREACH
