<?php
$title = "jeux";
foreach($games as $game):?>
    <p><a href="index.php?page=achievement&game_id=<?=$game->game_id?>"><?=$game->title?></a></p>
<?php endforeach ?>