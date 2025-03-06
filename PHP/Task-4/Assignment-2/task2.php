<?php
$date = "2005-10-02";
date_default_timezone_set("Africa/Cairo");
echo date_default_timezone_get() . "<br>"; // "Africa/Cairo"

echo date("Y, F, l 'dS' H:i:s", strtotime($date . " + 15 hours + 15 minutes + 15 seconds"));

// "2005, October, Sunday '02nd' 15:15:15"
?> 
