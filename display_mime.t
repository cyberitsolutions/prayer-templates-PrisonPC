%# $Cambridge: hermes/src/prayer/templates/cam/display_mime.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr />
<p>
MIME structure of
<a href="<% display/${nav->cur_msg}/${nav->cur_uid} |s %>">this message</a>,
including any attachments:
</p>
%#
%# @atts is flattened tree, where $a->start_list and $a->end_list indicating
%# nesting, any other node is a section which can be downloaded.
%#
% FOREACH $a @atts
%   IFDEF $a->start_item
<li>
%   ELSE
%     IFDEF $a->end_item
</li>
%     ELSE
%       IFDEF $a->start_list
<% "Multipart:" IFDEF $a->nested_multipart |h %>
<ol>
%       ELSE
%         IFDEF $a->end_list
</ol>
%         ELSE
%           IFDEF $a->is_text
%             CALL display_mime_text, 
%                 $_msg => $nav->cur_msg, $_uid => $nav->cur_uid,
%                 $_section => $a->section, $_name => $a->name,
%                 $_type => $a->type, $_lines => $a->lines
%           ELSE
%             IFDEF $a->is_msg
%               CALL display_mime_msg, 
%                 $_msg => $nav->cur_msg, $_uid => $nav->cur_uid,
%                 $_section => $a->section, $_name => $a->name,
%                 $_type => $a->type, $_size => $a->size
%             ELSE
%               CALL display_mime_other, 
%                 $_msg => $nav->cur_msg, $_uid => $nav->cur_uid,
%                 $_section => $a->section, $_name => $a->name,
%                 $_type => $a->type, $_size => $a->size
%             ENDIF
%           ENDIF
%         ENDIF
%       ENDIF
%     ENDIF
%   ENDIF
% ENDFOREACH
<hr />
