<?php

setcookie("site[layout]", "boxed", strtotime("+2 months +5 days"), "/", "localhost");
setcookie("site[font]", "Swat", strtotime("+2 months +5 days"), "/", "localhost");
setcookie("site[color]", "blue", strtotime("+2 months +5 days"), "/", "localhost");

//delete the layout cookie
setcookie("site[layout]", "", strtotime("-5 days"), "/", "localhost");

?> 
