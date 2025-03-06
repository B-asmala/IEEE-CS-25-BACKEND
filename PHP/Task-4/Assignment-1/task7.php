<?php
// elzero.txt Content
//Hello Osamaa Web
//School

// elzero.txt New Content
//Hello Elzero Web
//School

$file = fopen("elzero.txt", "r");
$content = fread($file,filesize("elzero.txt"));
$content = str_replace("Osamaa", "Elzero", $content);
fclose($file);

$file = fopen("elzero.txt", "w");
fwrite($file, $content);
fclose($file);

?> 
