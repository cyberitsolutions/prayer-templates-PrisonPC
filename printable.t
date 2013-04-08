%# $Cambridge: hermes/src/prayer/templates/cam/printable.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<body>
% CALL printable_hdrs
%#
%# Live system inserts message MIME structure and body by hand here
%#
% IFDEF $g_testrig
<% ${message} |n %>
%   CALL footer
% ENDIF
