<?php
$title = "Edition d'utilisateur";
?>

<form method="post">
    <?=$form->input('username', 'Username')?>
    <?=$form->input('admin', 'Administrateur')?>
    <button class="btn btn-primary">Modifier</button>
</form>