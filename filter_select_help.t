%# $Cambridge: hermes/src/prayer/templates/cam/filter_select_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>After selecting the 
<a name="Add"> <i>Add filter</i></a> button from the main
<i>Mail Filtering</i> screen you are presented with a list of your mail
folders to select the destination folder.</p>

<p>The <i>Status</i> line on the <i>Select Target Mail Folder...</i>
screen will show the current action, for example:</p>
<table>
<tr class="t_status">
<td align="left"><b>Status:</b>
Adding SENDER filter: &quot;myfriend@someuni.ac.uk&quot;</td>
</tr></table>

<p>The <i>Cancel</i> button at the end of the line immediately below the
<i>Select Target Mail Folder...</i> heading returns you to the main mail
filtering screen and no action is taken.</p>

<h2><a name="Select">Selecting a folder</a></h2>

<ul>
<li> If the folder you wish to use is shown in the list then choose:-
   <ul> 
   <li><i>Select (no copy)</i> if you wish the message just to
       be put in the selected folder.</li>
   <li> <i>Select (save copy to inbox)</i> to put one copy in the 
        selected folder and one in the inbox.</li>
   </ul>
  A successful filter entry will then take you back to the main filter
  screen with the status message and display updated to show the
  new filter.</li>
<li>If the folder exists, but you know that it is in another directory, 
you can expand collapsed directories using the
<img src="<% right |i %>" alt="Expand" /> icon.</li>
<li>If the folder does not exist create it using the <i>Create</i>
dialogue.  Once you click the <i>Create</i> button the folder is
created and the display of mail folders updated. You can then choose one of
the <i>Select</i> options, as described above.</li>
</ul>
