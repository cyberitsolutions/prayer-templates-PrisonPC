%# $Cambridge: hermes/src/prayer/templates/cam/search_footer.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<table><tr>
% IFEQ $selected 0
<td><input type="submit" name="sub_fresh" value="Search" /></td>
% ELSE
%   IFEQ $selected $count
<td><input type="submit" name="sub_fresh" value="Search" /></td>
%   ELSE
<td><input type="submit" name="sub_fresh" value="Fresh Search" /></td>
<td><input type="submit" name="sub_narrow" value="Narrow Existing Search" /></td>
<td><input type="submit" name="sub_broaden"
           value="Broaden Existing Search" /></td>
%  ENDIF
% ENDIF
</tr></table>
</form>
