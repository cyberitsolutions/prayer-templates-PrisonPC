%# $Cambridge: hermes/src/prayer/templates/cam/compose_toolbar.t,v 1.4 2008/09/29 08:03:45 dpc22 Exp $
<div id="skip"> <a href="#skip-content" accesskey="2">Skip to content</a></div>
<div id="header">
  <div id="branding">
  </div>
  <div id="change-to">
    <div class="change">
Change to:
<select name="folder">
% IFDEF $g_favourites[0]
%   FOREACH $m @g_favourites
<option value="<% $m->name |c %>"><% $m->name |h %></option>
%   ENDFOREACH
% ELSE
%   FOREACH $m @g_mailbox_list
<option value="<% $m->name |c %>"><% $m->name |h %></option>
%   ENDFOREACH
% ENDIF
</select>
<input type="submit" name="sub_folder_dialogue" value="Go" />
    </div>
  </div>
</div>

<div id="dept-title">
% IFDEF $g_service_name
<h1><% $g_service_name |h %> webmail service</h1>
% ELSE
<h1>Prayer webmail service</h1>
% ENDIF
</div>

<div id="navtabs">
  <div class="compose_toolbar_left">
% CALL compose_toolbar_left
  </div>
  <div class="compose_toolbar_right">
% CALL compose_toolbar_right
  </div>
</div>
