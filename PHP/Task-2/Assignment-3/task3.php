<?php

// Write Function Content Here
function sum_all(...$args){
	$sum = 0;
	foreach($args as $x){
    	if($x <> 5){
        	$sum += $x;
            
        }
        
        if($x == 10){
        	$sum += 10;
        }
    }
    
    return $sum . "<br>";
}

// Needed Output
echo sum_all(10, 12, 5, 6, 6, 10); // 64
echo sum_all(5, 10, 5, 10); // 40

?>





