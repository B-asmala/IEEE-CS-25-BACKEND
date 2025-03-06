<?php
//output current file name in 4 ways
echo basename(__FILE__);
echo basename($_SERVER['PHP_SELF']);
echo basename($_SERVER['SCRIPT_NAME']);
echo pathinfo(__FILE__)['basename'];

?> 
