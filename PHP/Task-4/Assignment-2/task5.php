<?php
echo time() . "<br>";

// 3 other ways with the same output
echo floor(microtime(true)) . "<br>";
echo strtotime("now") . "<br>";
echo (new DateTime()) -> getTimestamp();

?> 
