<?php

setcookie("site[layout]", "boxed", strtotime("+2 months +5 days"), "/", "localhost");
setcookie("site[font]", "Swat", strtotime("+2 months +5 days"), "/", "localhost");
setcookie("site[color]", "blue", strtotime("+2 months +5 days"), "/", "localhost");

//delete the layout cookie
setcookie("site[layout]", "", strtotime("-5 days"), "/", "localhost");

// set the rest as session cookies
setcookie("site[font]", "Swat", 0, "/", "localhost");
setcookie("site[color]", "blue", 0, "/", "localhost");

?> 
