<?php

// Write Function Content Here
function greeting(...$name){
	echo "Hello ";
	if(count($name) == 2){
    	if($name[1] == "Male"){
        	echo "Mr ";
        }else{
        	echo "Miss ";
        }
        
	}
    
    echo $name[0] . "<br>";

}
// Needed Output
echo greeting("Osama", "Male"); // Hello Mr Osama
echo greeting("Eman", "Female"); // Hello Miss Eman
echo greeting("Sameh"); // Hello Sameh

?>





