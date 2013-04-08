%# $Cambridge: hermes/src/prayer/templates/cam/abook_transfer_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>The Email system uses its own addressbook.  It does not use the same
addressbook as, for example, Pine on <% $g_service_name |h %>.  If you wish
to use either your <% $g_service_name |h %> Pine addressbook, or a local
Pine format addressbook, you will need to import it into Email.</p>

<p>Using this screen you can:</p>
<ul>
<li> import a Pine or Outlook format addressbook on your local system 
     into your Email addressbook;</li>
<li> export your Email addressbook to a Pine or Outlook format addressbook 
     on your local system;</li>
<li> import your Pine addressbook on <% $g_service_name |h %> into your
     Email addressbook; </li>
<li> export your Email addressbook for use with Pine on <% $g_service_name |h %>.</li>
</ul>

<h2> <a name="Actions">Importing and exporting the addressbook</a> </h2>

<p>The Email can import and export two different forms of addressbook.
Comma Separated Variable (CSV) format addressbooks are used by Outlook and
Outlook Express. PINE format addresses are used by PINE and Mulberry.  If
you wish to use an addressbook from another mail client, such as Eudora,
then you will first need to find a method of saving or exporting the
addressbook into the correct format.</p>


<ul>
<li> To transfer a Pine or CSV address book from your local system into the
     Email system, <i>Browse</i> to the location of the address book on
     your local disk, select the appropriate file, then select
     <i>Import</i>.  The entries will be merged with any entries you
     already have in your Email addressbook.  New entries will appear at
     the end of your Email addressbook.
</li>
<li> To transfer your Email address book to your local system, select
     <i>Export CSV (Outlook) addressbook</i> or
     <i>Export PINE addressbook</i> or then use your browser's 
     "Save" feature to navigate to where you wish to put the address book. 
</li>
<li> To import your Pine addressbook on <% $g_service_name |h %> into your Email
     addressbook select <i>Import from Unix Pine addressbook</i>.
     Your Pine addressbook is imported and
     you are returned to the addressbook listing screen.
     The entries will be merged with any entries you already have 
     in your Email addressbook.  New entries will appear at the end 
     of your Email addressbook.
</li>
<li> To export your Email addressbook for use with Pine on <% $g_service_name |h %>
     select <i>Export to Unix Pine adddressbook</i>.  Your addressbook
     is exported and you are returned to the addressbook listing screen.
</li>
</ul>   
