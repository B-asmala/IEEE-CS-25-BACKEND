<?php
date_default_timezone_set('Asia/Riyadh');
echo date_default_timezone_get() . "<br>"; // "Asia/Riyadh"

echo date('D, d M y - h:i:s A') . "<br>"; // "Wed, 09 Nov 22 - 07:11:22 PM"
echo date('l, d F Y - h:i:s A'); // "Wednesday, 09 November 2022 - 07:11:22 PM"

?> 
