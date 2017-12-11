%# $Cambridge: hermes/src/prayer/templates/cam/compose_large_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>Note that in this Webmail screen the main toolbar is not visible,
so the <i>Help</i> and <i>Logout</i> buttons are included as part of
this page.</p>

<p>By default the size of the message body part is 80 columns and 
24 rows.  You can change this if you wish using an option under
<i>Manage -&gt; Preferences -&gt; Extra Compose</i></p>

<h2>The buttons</h2>

<ul>
<li>Above the message body part:-
  <ul>
   <li><i>Small</i> - this returns you to the standard Compose screen 
        layout.</li>
   <li><i>Help</i> - takes you to this help text.</li>
   <li><i>Logout</i> - The Logout button brings up a confirmation screen
      which lets you logout of your mail session. You must remember
      to logout when you have finished your session.  </li>
   </ul>
</li>
<li>Below the message body part:-
  <ul>
   <li><i> Check Spelling</i> - this will check the body of the message
         and allow you to accept suggested alterations, leave the word 
         unchanged or add the word to your personal dictionary. Once the 
         spell check has completed the status field will summarise, for
         example:-
         <table><tr class="t_status">
         <td align="left"><b>Status:</b>
          Spell Check finished (0 changes made)</td>
         </tr></table>
         </li>
   <li><i>Cancel</i> - cancels the message and returns you to the
        Webmail page you came from when you originally chose 
        <i>Compose</i>.  The status line will change to reflect the action:-
        <table><tr class="t_status">
        <td align="left"><b>Status:</b>Draft message cancelled</td>
        </tr></table>
        </li>
   <li><i>Postpone</i> - the draft is saved to the mail folder defined 
       to hold these messages (default <i>postponed-messages</i>)
       and you are returned to the Webmail page you came from when 
       you originally chose <i>Compose</i>.
       The status line will change to reflect the action:-
       <table><tr class="t_status">
       <td align="left"><b>Status:</b>Draft message postponed</td>
       </tr></table>
      If you have messages in the postponed messages folder then when 
       you select <i>Compose</i> you get the option to continue with 
       the postponed message or start a new one.</li>
   <li><i>Send</i> - triggers an immediate send and returns
      you to the Webmail page you came from when
       you originally chose <i>Compose</i>.</li>
  <li><i>Save copy</i> - This check box controls
      whether a copy is automatically saved.  The default for this 
      is set in <i>Manage -&gt; Preferences -&gt; Extra Compose</i>.
      </li>
   </ul>
</li> 
</ul>

<p>If you have enabled  <i>Manage -&gt; Preferences -&gt; Extra Compose -&gt;
Enable manual line wrap options</i> then there will be two extra options
on the line below the message body part:-</p>

<ul>
<li><i>Line Wrap</i> - wraps the message to a line length defined in
     <i>Manage -&gt; Preferences -&gt; Extra Compose -&gt; Line Wrap at</i>.
     The default is 76 characters. </li>
<li><i>Line Wrap on Send</i> -  wraps the text of the 
       message as part of the action of sending the message.</li>
</ul>

