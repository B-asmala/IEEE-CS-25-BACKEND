<?php

$num_one = -1;
$num_two = 2.5;

$let_one = "o";
$let_two = "z";

$str = "El%er0";

// Write Your Code Here
echo substr_replace(substr_replace($str, $let_one, strlen($str) + $num_one, 1), $let_two, floor($num_two), 1); // Elzero

?>





