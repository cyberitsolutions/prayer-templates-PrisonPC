%# $Cambridge: hermes/src/prayer/templates/cam/display_addr.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%# Display a single address with abook_take link. Inputs:
%#   $_alias    - existing alias, if already exists in addressbook
%#   $_personal - personal name
%#   $_email    - email address
%#   $_raw      - raw text to display without link, on parse error
%#
% IFNEQ $_raw ""
<% $_raw |h %>
% ELSE
<a href="\
<% abook_take?alias=${_alias|u}&name=${_personal|u}&email=${_email|u} |s %>">\
%   IFNEQ $_personal ""
<% "$_personal <$_email>" |h %>
%   ELSE
<% $_email |h %>
%   ENDIF
</a>
% ENDIF
% IFEQ $_next "1"
, 
% ENDIF

