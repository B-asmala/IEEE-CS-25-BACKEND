<?php

$mix = [1, 2, "A", "B", "C", 3, 4];
$intC = 0;
$igC = 0;
foreach($mix as $i){
	if(gettype($i) == "integer"){
    	echo $i . "<br>";
    	$intC ++;
    }else{
    	$igC ++;
    }
}

echo $intC . " Numbers Printed<br>";
echo $igC . " Letters Ignored<br>";

// Output
//1
//2
//3
//4
//"4 Numbers Printed"
//"3 Letters Ignored"

?>





