%# $Cambridge: hermes/src/prayer/templates/cam/sort_icon.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%#
% IFEQ $sort_mode $_value
%   IFDEF $sort_reverse
<img src="<% sort-d |i %>" alt="" width="9" height="9" />
%   ELSE
<img src="<% sort-u |i %>" alt="" width="9" height="9" />
%   ENDIF
% ENDIF
