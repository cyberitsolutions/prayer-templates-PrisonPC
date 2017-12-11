%# $Cambridge: hermes/src/prayer/templates/cam/search_date_help.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
<hr class="helpsep" />

<p>The Search screen allows you to select a set of messages from the
current mail folder using different criteria.  After you have selected your
messages you can take action on them, for example, <i>Mark</i> them all and
copy them all to the same folder.</p>

<p>After the initial search has been made it is possible to add another
criterion to refine the selection.</p>

<p>With the exception of the field for the year, the form is a set 
of pull-down menus.
By default the selection is to search for messages dated today.
In the screen above "today" is 5th June 2001.  Other options are to select
dates <i>Before (not including)</i>, <i>Before (including)</i>, <i>Since
(including)</i>, <i>Since (not including)</i> a selected date.</p>

<p>Some examples:- <br />
If the current date is 5th June 2001, then  </p>
<ul>
<li>
  <form action="<% action_stub |s %>">
  <table>
  <tr>
  <td>
  <select name="date_op" size="1"> 
  <option value="before_exc">Before (not including)</option>
  </select>
  </td>
  <td>
  <select name="date_day" size="1">
  <option value="5">5</option>
  </select>
  </td>
  <td>
  <select name="date_month" size="1">
  <option value="6">June</option>
  </select>
  </td>
  <td><input name="date_year" value="2001" size="4" /></td>
  </tr>
  </table>
  </form>
  will select messages with dates from 1st January 1990 to 4th June
  2001 inclusive;
</li>
<li>
  <form action="<% action_stub |s %>">
  <table>
  <tr>
  <td>
  <select name="date_op" size="1">
  <option value="before_inc">Before (including)</option>
  </select>
  </td>
  <td>
  <select name="date_day" size="1">
  <option value="3">3</option>
  </select>
  </td>
  <td>
  <select name="date_month" size="1">
  <option value="3">March</option>
  </select>
  </td>
  <td>
  <td> <input name="date_year" value="2000" size="4" /></td>
  </tr>
  </table>
  </form>
  will select messages from 1st January 1990 to 3rd March 2000 inclusive;
</li>
<li>
  <form action="<% action_stub |s %>">
  <table>
  <tr>
  <td>
  <select name="date_op" size="1">
  <option value="since_inc">Since (including)</option>
  </select>
  </td>
  <td>
  <select name="date_day" size="1">
  <option value="1">1</option>
  </select>
  </td>
  <td>
  <select name="date_month" size="1">
  <option value="1">January</option>
  </select>
  </td>
  <td> <input name="date_year" value="2001" size="4" /></td>
  </tr>
  </table>
  </form>
  will select messages from 1st January 2001 until the current day;
</li>
<li>
  <form action="<% action_stub |s %>">
  <table>
  <tr>
  <td>
  <select name="date_op" size="1">
  <option value="since_exc">Since (not including)</option>
  </select>
  </td>
  <td>
  <select name="date_day" size="1">
  <option value="20">20</option>
  </select>
  </td>
  <td>
  <select name="date_month" size="1">
  <option value="5">May</option>
  </select>
  </td>
  <td> <input name="date_year" value="1998" size="4" /></td>
  </tr>
  </table>
  </form>
  will select messages from 21st May 1998 until the current day.
</li>
</ul>

<p> Once you have chosen your date then choosing <i>Search</i> will
return you to the mail folder with just the selected message(s) listed.</p>
