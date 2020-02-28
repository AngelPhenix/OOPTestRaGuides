<?php
$title = "Succès";
foreach($achievements as $cheevo):?>
    <div>
        <img src="<?=$cheevo->icon?>" alt="icon">
        <h4><?=$cheevo->title?></h4>
        <p><?=$cheevo->description?></p>
    </div>
<?php endforeach ?>