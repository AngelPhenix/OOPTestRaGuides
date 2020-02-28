<?php
$title = "console";
foreach($consoles as $console):?>
    <p><a href="index.php?page=game&console=<?=$console->name?>"><?=$console->name?></a></p>
<?php endforeach ?>