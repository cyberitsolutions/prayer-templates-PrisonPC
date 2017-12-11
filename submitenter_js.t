%# $Cambridge: hermes/src/prayer/templates/cam/submitenter_js.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<script type="text/javascript">
<!--
function submitenter(myfield,e,value)
{
var keycode;
if (window.event) keycode = window.event.keyCode;
else if (e) keycode = e.which;
else return true;

if (keycode == 13)
   {
   myfield.form.submit(value);
   return false;
   }
else
   return true;
}
//-->
</script>
