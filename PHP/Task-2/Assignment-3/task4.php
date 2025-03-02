<?php

// Write Function Content Here
function multiply(...$args){
	$res = 1;
	foreach($args as $x){
    	if(gettype($x) <> "string"){
        	$res *= floor($x);
            
        }
        
        
    }
    
    return $res . "<br>";
}

echo multiply(10, 20); // 200
echo multiply("A", 10, 30); // 300
echo multiply(100.5, 10, "B"); // 1000

?>





