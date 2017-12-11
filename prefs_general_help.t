%# $Cambridge: hermes/src/prayer/templates/cam/prefs_general_help.t,v 1.2 2008/09/25 09:53:30 dpc22 Exp $
<hr class="helpsep" />

<ul>
<li><i>Template Set</i> defines the look and feel of the application</li>
<li><i>Enable welcome screen</i> controls whether or not the initial
     screen "Welcome to the Webmail Service" is displayed when you
     log in.</li>
% IFDEF $raven_enable
<li><i>Allow Raven Logins</i> - most people will want to leave this
  checked. Can be unchecked to stop Raven Web Single Sign on from applying
  to this account.</li>
% ENDIF
<li><i>Confirm expunge</i> - if this is checked then attempts to
     expunge messages will generate a screen asking you to confirm or
     cancel.</li>
<li><i>Confirm Logout</i> - if this is unchecked then selecting "Logout"
    on any screen will log you out immediately, otherwise you will
    see a screen asking you to confirm or cancel your logout.</li>
<li><i>Expunge deleted messages from INBOX on logout</i> -
    automatically expunges messages when enabled</li>
<li><i>Use persistent marks</i>  - 
The Webmail default is to use non-persistent marks.  This means 
that while you can mark more than one message on a screen you must
take action on the marked messages, for example copying them all
to a folder, before you move to another screen.
If you change to another screen, for example listing the next screenful of
messages, the marks are not retained.  
<br />
If you enable <i>Use persistent marks</i> then each time you mark a 
message a connection is made to the Webmail server.
Because of this interaction with the server working with
persistent marks is slower and  
is only recommended if you are working over a fast connection,
for example within the University.  
Using persistent marks you can work on a whole mail folder rather 
than just the current 
screenful of messages.  If this option is enabled 
then the following options can also be used:-
  <ul>
   <li> <i>Zoom automatically after search</i> controls what
      happens with the results of a search on a mail folder.  If this 
      option is selected then, as well as the messages being marked, the 
      mail folder listing changes to show just the selected messages.</li>
   <li> <i>Unmark messages after aggregate operation</i> controls what
      happens after an action has been taken on a group of marked messages,
      for example saving them to another mail folder.  If this option
      is checked then, on return to the mail folder listing, the mark is
      removed from the relevant messages. </li>
  </ul>
 </li>
</ul>
