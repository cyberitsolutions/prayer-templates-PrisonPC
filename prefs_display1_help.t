%# $Cambridge: hermes/src/prayer/templates/cam/prefs_display1_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<ul>
<li><i>Use icons</i> controls the use of icons and text for
     links and navigation.
     If this option is unselected then only text is used.
     This has additional effects on certain pages.
      For example in the mail folder list screen the single column
      (envelope icon) that indicates 
      the status of a message is replaced by three columns
      <i>D</i> (marked if message deleted), <i>N</i> (showing
      <i>N</i> for a new message or <i>O</i> for a read message) 
      <i>A</i> (marked if message answered).
</li>
<li><i>Duplicate icons below message</i> controls whether a duplicate
      of the common toolbar (the icons/text appearing at the top
      of every screen) should appear below messages when they
     are being viewed.
</li>
<li><i>Display text/html sections inline</i>.  Many messages
      have text and HTML parts.  If this option is unchecked then, when
      messages have a  <tt>Content-Type: text/html</tt> header and
      the HTML section is selected, the raw HTML is shown instead
      of it being rendered (presented formatted).
</li>
<li><i>Display text/* sections starting &lt;html&gt; inline</i>.
      Some messages are in HTML but do not have the correct (or any)
      Content-Type headers. 
     These are frequently spam messages.
     If this option is unchecked these messages are displayed as
     raw HTML instead of being rendered. 
</li>
<li><i>Preserve MIME type when downloading attachments</i> controls
     whether attachments where the type can be handled by the
     browser (for example images in GIF or JPEG format) 
      are displayed in the browser when the attachment is 
     selected.   When the option is checked an attachment of a type 
     the browser can handle is displayed when selected, otherwise
     the browser's "Save As..." dialogue appears allowing
    you to save the attachment to your local system for later
    processing.
    If the option is unchecked then selecting any attachment
    will bring up the browser's "Save As..." dialogue.
</li>
<li><i>Default folder sort mode</i> affects the  way all mail folders are
    sorted and thus presented.  The default is <i>Arrival</i> - messages
    are presented in the order they arrive in the mail folder.  There is
    a wide range of alternatives, including <i>Date</i>, <i>From</i>
    and <i>Subject</i>. 
    It is also possible to change the sort order of the current folder in
    the <i>Mailboxes</i> screen. 
</li>
<li><i>Messages per page</i> controls the number of messages listed
    per screen in the message list screen.
</li>
<li><i>Addressbook sort mode</i> affects the way that the addressbook is
    sorted and thus presented.  The default is <i>Order</i> - entries are
    presented in the order they have been added to the addressbook.  There
    is a range of alternatives, including <i>Alias</i>, <i>Name</i> and
    <i>Comment</i> and <i>Address</i>.  It is also possible to change the
    current sort order on the <i>Addressbook</i> screen.
</li>
<li><i>Addressbook entries per page</i> controls the number of addresses
    listed per screen in the main addressbook screen.
</li>
<li><i>Alt Addresses</i> -  a comma-separated list of alternative
    addresses that you use to send email.  This controls what is shown
    in the <tt>From</tt> column of the message list screen.  Messages
    from any of your defined addresses will show who they are
    to rather than who they are from.
</li>
</ul>
