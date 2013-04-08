%# $Cambridge: hermes/src/prayer/templates/cam/folderlist_folders.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFEQ $_name "INBOX"
<td></td><td ></td>
% ELSE
<td><a href="<% rename/${_name|c} |s %>">Rename</a></td>
<td><a href="<% rm/${_type}/${_name|c} |s %>">Delete</a></td>
% ENDIF
