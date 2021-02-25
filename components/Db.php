<?php


class Db
{
    public static function getConnection()
    {
        $params = include('config/db_params.php');
        $host = $params['host'];
        $dbname = $params['name'];
        $user = $params['user'];
        $pass = $params['pass'];

        $db = new PDO("mysql:host=$host; dbname=$dbname", $user, $pass, [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC]);

        return $db;
    }
}