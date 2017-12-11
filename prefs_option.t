%# $Cambridge: hermes/src/prayer/templates/cam/prefs_option.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
%# Parameters:
%#  $_value      Value for this select option       
%#  $_desc       Description for this select option
%#  $_current    Current value, for "selected"
%#
<option value="<% $_value |n %>"\
% IFEQ $_current $_value
 selected="selected"
% ENDIF
>
<% $_desc |h %></option>
<option value="<% reverse-${_value} |n %>"\
% IFEQ $_current "reverse-${_value}"
 selected="selected"
% ENDIF
><% "Reverse ${_desc}" |h %></option>
