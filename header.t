%# $Cambridge: hermes/src/prayer/templates/cam/header.t,v 1.3 2009/01/13 14:55:09 dpc22 Exp $
%#
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
% IFDEF $g_service_name
<title><% $g_service_name |h %> Email Service</title>
% ELSE
<title>Prayer Email Service</title>
% ENDIF
<meta name="robots" content="none" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/static/ppclayout.css"
      type="text/css" media="all" />
<link rel="stylesheet" href="/static/print.css"
      type="text/css" media="print" />
<link rel="stylesheet" href="/static/ppcstyle.css"
      type="text/css" media="all" />
<link rel="icon" type="image/png"  href="/icons/msg-seen.png" />
</head>

<body class="one-col">
