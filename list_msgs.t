%# $Cambridge: hermes/src/prayer/templates/cam/list_msgs.t,v 1.4 2008/09/18 11:06:35 dpc22 Exp $
%#
<tbody>
% FOREACH $msg @list_msg
<tr>
<td align="right"><strong><% $msg->num |h %>.</strong></td>
% IFDEF $use_persist
%   IFDEF $msg->is_marked
<td align="right"><a href="<% unmark/${msg->num}/${msg->uid} |s %>">\
%     IFDEF $g_use_icons
  <img src="<% ic_check_box |i %>" alt="Yes" />
%     ELSE
Yes\
%     ENDIF
</a></td>
%  ELSE
<td><a href="<% mark/${msg->num}/${msg->uid} |s %>">\
%     IFDEF $g_use_icons
  <img src="<% ic_check_box_outline_blank |i %>" alt="No" />
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
<td align="center"><img src="<% ic_delete |i %>" alt="" /></td>
%   ELSE
%     IFDEF $msg->is_answered
<td align="center"><img src="<% ic_reply |i %>" alt="" /></td>
%     ELSE
%       IFDEF $msg->is_seen
<td align="center"><img src="<% ic_mail |i %>" alt="" /></td>
%       ELSE
<td align="center"><img src="<% ic_mail_outline |i %>" alt="" /></td>
%       ENDIF
%     ENDIF
%   ENDIF
% ELSE
%   IFDEF $msg->is_deleted
<td align="center">D</td>
%   ELSE
<td align="center">&nbsp;</td>
%   ENDIF
%   IFDEF $msg->is_seen
<td align="center">O</td>
%   ELSE
<td align="center">N</td>
%   ENDIF
%   IFDEF $msg->is_answered
<td align="center">A</td>
%   ELSE
<td align="center">&nbsp;</td>
%   ENDIF
% ENDIF
%# NOTE: nowrap makes when the table is too wide,
%#       the browser will shrink the from/subject columns.
%#       Without this, the date column shrinks,
%#       making ALL rows require a second line.
<td align="left" style="white-space:nowrap"><% $msg->date |h %></td>
<td>
 <a href="<% display/${msg->num}/${msg->uid} |s %>"><% $msg->full_dname |h %>
</a></td>
<td align="right"><% $msg->size |h %>
</td>
<td>
%   IFDEF $msg->has_attach
<img src="<% ic_attach_file |i %>" alt="" />
%   ENDIF
 <a href="<% display/${msg->num}/${msg->uid} |s %>"><% $msg->full_subject |h %>
</a></td>
<td align="right">
% IFDEF $msg->is_deleted
 <a href="<% undelete/${msg->num}/${msg->uid} |s %>"><button type="button">Undelete</button></a></td>
% ELSE
 <a href="<% delete/${msg->num}/${msg->uid} |s %>"><button type="button">Delete</button></a></td>
% ENDIF
</tr>
% ENDFOREACH
</tbody>
