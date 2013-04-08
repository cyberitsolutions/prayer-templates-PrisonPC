%# $Cambridge: hermes/src/prayer/templates/cam/toolbar.t,v 1.4 2009/01/13 16:16:16 dpc22 Exp $
%
<div id="skip"> <a
href="#skip-content" accesskey="2">Skip to content</a> </div>
<div id="header">
<div id="branding">
</div>
<div id="change-to">
<form method="post" accept-charset="UTF-8"
      enctype="multipart/form-data" action="<% change |s %>">
<div class="change">
Change to:
<select name="folder">
% IFDEF $g_favourites[0]
%   FOREACH $m @g_favourites
%     IFEQ $m->name $g_preferred
<option value="<% $m->name |c %>" selected="selected"><% ${m->name|7} |h %></option>
%     ELSE
<option value="<% $m->name |c %>"><% ${m->name|7} |h %></option>
%     ENDIF
%   ENDFOREACH
% ELSE
%   FOREACH $m @g_mailbox_list
<option value="<% $m->name |c %>"><% ${m->name|7} |h %></option>
%   ENDFOREACH
% ENDIF
</select>
<input type="submit" name="sub_folder_dialogue" value="Go" />
</div>
</form>
</div>
</div>
<div id="dept-title">
% IFDEF $g_service_name
<h1><% $g_service_name |h %> Email Service</h1>
% ELSE
<h1>Prayer Email Service</h1>
% ENDIF
</div>
<div id="navtabs">
<ul>
% CALL tb_item, $_cmd => "display", $_text => "Message"
% CALL tb_item, $_cmd => "list", $_text => "Mailbox"
% CALL tb_item, $_cmd => "folders", $_text => "Folders"
% CALL tb_item, $_cmd => "compose", $_text => "Compose"
% CALL tb_item, $_cmd => "abook_list", $_text => "Addressbook"
% CALL tb_item, $_cmd => "manage", $_text => "Manage"
</ul>
<div class="globnav"> 
    <ul>
% IFDEF $g_help
      <li><a href="<% help/$g_cmd |s %>">Hide Help</a></li>
% ELSE
      <li><a href="<% help/$g_cmd |s %>">Help</a></li>
% ENDIF
      <li class="last"><a href="<% logout/$g_cmd |s %>">Logout</a></li>
  </ul>
</div>
</div>

