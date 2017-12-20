%# $Cambridge: hermes/src/prayer/templates/cam/compose_small_top.t,v 1.3 2008/09/16 16:38:09 dpc22 Exp $
%# FIXME: Consider <input type=email multiple> — https://html.spec.whatwg.org/multipage/input.html#e-mail-state-(type=email)
<table cellspacing="0" cellpadding="0" id="compose_table">
<tr>
<td class="highlight">To:</td>
<td><input name="hdr_To" value="<% $hdr_to |h %>" size="70" /></td>
<td><input type="submit" name="sub_abook_To" value="Expand" /></td>
</tr>
<tr>
<td class="highlight">Cc:</td>
<td><input name="hdr_Cc" value="<% $hdr_cc |h %>" size="70" /></td>
<td><input type="submit" name="sub_abook_Cc" value="Expand" /></td>
</tr>
<tr>
<td class="highlight">Subject:</td>
<td><input name="hdr_Subject" value="<% $hdr_subject |h %>" size="70" /></td>
</tr>
</table>
<br />
<table cellspacing="0" cellpadding="0">
<tr>
<td><input type="submit" name="sub_attachments"
     value="Attachments (<% $att_count |n %>)" /></td>
</tr></table>
