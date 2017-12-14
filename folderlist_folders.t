%# $Cambridge: hermes/src/prayer/templates/cam/folderlist_folders.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% IFEQ $_name "INBOX"
<td></td><td ></td>
% ELSE
<td><a href="<% rename/${_name|c} |s %>"><button type="button">Rename</button></a></td>
<td><a href="<% rm/${_type}/${_name|c} |s %>"><button type="button">Delete</button></a></td>
% ENDIF
