<?php
$id = intval($_POST['id']);

$data = [
    'title' => $_POST['title'],
    'text' => $_POST['text'],
];

$db = new PDO('mysql:host=localhost; dbname=news', 'root', 'root');
$sql = "UPDATE articles SET  title = :title, text = :text, edited_data = CURRENT_TIMESTAMP() WHERE id = $id";

$statemant = $db->prepare($sql);
$result = $statemant->execute($data);