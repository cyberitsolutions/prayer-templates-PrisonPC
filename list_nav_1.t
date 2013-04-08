%# $Cambridge: hermes/src/prayer/templates/cam/list_nav_1.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<td>
%#
%# $_agg should be "aggregate" at top "aggregate2" at bottom of screen.
%#
% IFDEF $g_use_icons
%   CALL list_nav_1_icons
% ELSE
%   CALL list_nav_1_noicons
% ENDIF
  <select name="<% $_agg |n %>">
  <option value="delete">Delete marked</option>
  <option value="undelete">Undelete marked</option>
  <option value="read">Flag as read</option>
  <option value="unread">Flag as unread</option>
  <option value="forward">Forward marked</option>
  <option value="copy" selected="selected">Copy marked</option>
  </select>
  <input type="submit" name="sub_<% $_agg |n %>" value="Go" />
</td>
