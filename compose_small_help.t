%# $Cambridge: hermes/src/prayer/templates/cam/compose_small_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>This works similarly to other mail clients.  To compose a message
enter the address of the recipient in the <i>To:</i> field and the
address of anyone who should also get a copy in the <i>Cc:</i> field.
If you want more than one address in a field put a comma between the 
addresses.  You can use addresses from your addressbook either
by typing the nickname (alias) or by selecting
the <i>Addressbook</i> icon from the main toolbar and then choosing
the recipients you want.
Enter the subject of the message into the <i>Subject:</i> field.  
Then type your message into the main message box.
You can also cut-and-paste text into the message box. Once you have
finished your message, select the <i>Send</i> button.</p>

<p>Description of the options obtained by using the buttons on 
the screen follows.</p>

<h2>The buttons</h2>

<p>This section describes the buttons on the default page.  If you have
enabled <i>Manage -&gt; Preferences -&gt; Extra Compose -&gt; Enable manual
line wrap options</i> there will be some extra buttons on the bottom row.
These are described at the bottom of this page.</p>

<ul>
<li>By the headers:-
 <ul>
  <li><i>Expand</i> - if you have typed a nickname (alias) from your 
      addressbook you can check that you have chosen the correct one 
      by using this.
      When you select this button the full address is substituted for 
      the alias. 
      If the alias does not exist in your address book then the
      default domain (typically @cam.ac.uk, depending on your setting 
      in <i>Manage -&gt; Preferences -&gt; Extra Compose</i>) will be
      added instead.
      The status line will change to reflect the result of 
      the action, for example after <i>Expand</i>-ing the <i>To:</i>
      field:-
      <table><tr class="t_status">
       <td align="left"><b>Status:</b>Header To Lookup Complete</td>
      </tr></table>
   </li>
   <li><i>Rich Headers</i> -  the standard header fields are 
      <i>To:</i>, <i>Cc:</i> and <i>Subject:</i>.  Selecting the
     <i>Rich Headers</i> button gives other header fields.  These are
        <ul>
        <li><i>Bcc:</i> - for use if you wish to send a copy of the
            message to someone but do not wish the other 
            recipients to see that you have sent a copy to that 
            person</li>
        <li><i>Fcc:</i> - in which you can enter the name of a mail
            folder to which you want the message copied 
            (the default is <i>sent-mail</i>) </li>
        <li><i>Reply-To:</i> - by default a reply will come to your
            address as it appears in the <i>From:</i> field.  You can
            use this if you wish any reply to come to a different
            address.</li>
        </ul>
    </li>
  </ul> 
</li>
<li>Above the message body part:
 <ul>
  <li><i>Large</i> -  takes you to another screen
        with a larger form area for the body part. The
        size of this form area is defined in
         <i>Manage -&gt; Preferences -&gt; Extra Compose</i>.</li>
  <li><i>Clear Headers</i> - Clears all message headers. </li>
  <li><i>Clear Body</i> - Clears all text entered in the body of 
      the message. </li>
  <li><i>Undo</i> - Undoes the last action.</li>
  <li><i>Import</i> - takes you to a screen from which you can browse
      your local file system and choose a text file to include in the body of
      the message.  Files produced by an application such as a word 
      processor cannot be included in the body of a message, but should be 
      attached to the message using the <i>Attachments</i> button.</li>
  <li><i>Attachments (0)</i> - takes you to a screen from which you
      can browse your local file system and choose a file to send
      as an attachment to the message. Once you have done this
      the button changes to show the number of attachments that
      will be sent with the message.</li>
  </ul>
</li>
<li>Below the message  body part:-
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
         Email page you came from.
      The status line will change to reflect the action:-
        <table><tr class="t_status">
        <td align="left"><b>Status:</b>Draft message cancelled</td>
        </tr></table>
      </li>
  <li><i>Postpone</i> - the draft is saved to the mail
       folder defined to hold these messages
       (default <i>postponed-messages</i>)
      and you are returned to the Email page you came from.
      The status line will change to reflect the action:-
       <table><tr class="t_status">
       <td align="left"><b>Status:</b>Draft message postponed</td>
       </tr></table>
      If you have messages in the postponed messages folder then when 
      you select <i>Compose</i> you get the option to continue with a 
      postponed message or start a new one.</li>
  <li><i>Send</i> - triggers an immediate send and returns
      you to the Email page you came from.</li>
  <li><i>Save copy</i> - This check box controls
      whether a copy is automatically saved.  The default for this,
      saving a copy to <i>sent-mail</i>, is set in 
      <i>Manage -&gt; Preferences -&gt; Extra Compose</i>.
      </li>
  </ul>
</li>
</ul>

<p>Other aspects, such as the size of the text area for the body part,
the use of a personal name, and whether a signature is included or not,
depend on choices made under <i>Manage -&gt; Preferences -&gt; Compose</i> and
<i>Manage -&gt; Preferences -&gt; Extra Compose</i>.</p>

<p>If you have enabled  <i>Manage -&gt; Preferences -&gt; Extra Compose -&gt;
Enable manual line wrap options</i> then there will be two extra options
on the line below the message body part:</p>

<ul>
<li><i>Line Wrap</i> - wraps the message to a line length defined in
 <i>Manage -&gt; Preferences -&gt; Extra Compose -&gt; Line Wrap at
</i>.  The default is 76 characters. </li>
<li><i>Line Wrap on Send</i> -  wraps the text of the 
       message as part of the action of sending the message.</li>
</ul>
