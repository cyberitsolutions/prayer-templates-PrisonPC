%# $Cambridge: hermes/src/prayer/templates/cam/compose.t,v 1.2 2010/07/02 16:14:30 dpc22 Exp $
%#
% CALL header
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% compose |s %>">
%   CALL compose_toolbar
%   CALL container_start
%   CALL status
%   CALL compose_small_top
<p>
%# NOTE: compose area default size is now hard-coded here
%# (132x25 - the same as a "wide" terminal)
<textarea name="body" cols="132" rows="25" style="max-width:100%"><% $body |h %></textarea>
</p>
<input type="submit" name="sub_postpone" value="Postpone" />
<input type="submit" name="sub_send" value="Send" />
%# ALWAYS save a copy (FCC) to "sent-mail" folder.
<input type="hidden" name="copy_outgoing" value="1" />
% IFDEF $g_help
%     CALL compose_small_help
% ENDIF
% CALL container_end
</form>
% CALL footer

