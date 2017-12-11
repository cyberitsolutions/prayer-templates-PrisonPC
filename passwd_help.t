%# $Cambridge: hermes/src/prayer/templates/cam/passwd_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>This screen allows you to change your <% $g_service_name |h %>
password. The screen contains some notes specific to
<% $g_service_name |h %> passwords, and a form you use to change your
password.  Some general advice on choosing passwords can be found in a
<a href="http://www.cam.ac.uk/cs/docs/infosheets/is6/#choosing">
Computing Service information leaflet</a>
</p>

<p> To change your password you need to enter your current password and 
the new password you would like.  You need to enter the new one twice, 
as this check provides a guard against accidental mistyping.</p>

<p>If your password change is successful then the <i>Status</i> message will 
change to</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> Changed password</td> 
</tr>
</table>
<p>and you will be returned to the Account Management screen.</p>

<p>If the attempt is not successful, you will stay in the <i>Change
Password</i> screen, and the reason the change failed will be displayed
in the <i>Status</i> line.  Examples of status messages are:</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> 
Password too short - must be at least 6 characters</td>
</tr>
</table>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> 
New passwords do not match</td>
</tr>
</table>
<p>and, if you enter your current password incorrectly:-</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b> 
Incorrect password </td>
</tr>
</table>
