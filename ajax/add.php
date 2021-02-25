<?php
$data = [
    'title' => $_POST['title'],
    'text' => $_POST['text']
];

$db = new PDO('mysql:host=localhost; dbname=news', 'root', 'root');
$sql = 'INSERT INTO articles (title, text) VALUES (:title, :text)';

$statemant = $db->prepare($sql);
$result = $statemant->execute($data);