<?php
$title = "Panel Administrateur";
?>

<h1>Administration d'utilisateur</h1>
<table class="table">
    <thead>
        <tr>
            <td>ID</td>
            <td>Username</td>
            <td>Admin</td>
            <td>Action</td>
        </tr>
    </thead>
    <tbody>
        <?php foreach($users as $user): ?>
        <tr>
            <td><?=$user->id?></td>
            <td><?=$user->username?></td>
            <td><?=$user->admin?></td>
            <td>
            <a class="btn btn-primary" href="?page=admin/edit&id=<?=$user->id?>">Editer</a>
            <form action="?page=admin/delete&id=<?=$user->id?>" method="post" style="display: inline">
                <input type="hidden" name="id" value="<?=$user->id?>">
                <button type="submit" class="btn btn-danger" href="http://google.com">Supprimer</button>
            </form>
            </td>
        </tr>
        <?php endforeach ?>
    </tbody>
</table>