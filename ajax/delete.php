<?php
$id = intval($_POST['id']);

$db = new PDO('mysql:host=localhost; dbname=news', 'root', 'root');
if (isset($id)) {
    $sql = "DELETE FROM `articles` WHERE id = $id";
    $query = $db->prepare($sql);
    $query->execute();
    $isDeleted = true;
}