%# $Cambridge: hermes/src/prayer/templates/cam/abook_transfer.t,v 1.2 2008/09/17 21:57:32 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Addressbook Transfer</h2>
<p>
<form method="post" action="<% abook_xfer/import |s %>"
      enctype="multipart/form-data">
<input type="submit" value="Import Addressbook" />
<input type="file" name="file" accept=".csv" />
</form>
</p>
<p>
<a href="<% abook_xfer/export_csv/addressbook |S %>"><button type=button>Export Addressbook</button></a>
</p>
% IFDEF $g_help
%   CALL abook_transfer_help
% ENDIF
% CALL container_end
% CALL footer
