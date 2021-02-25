<?php

class Articles{
    const SHOW_BY_DEFAULT = 5;

    public static function getArticlesById($id){
        $id = intval($id);

        if ($id){
            $db = Db::getConnection();
            $article = array();

            $sql = ("SELECT id, title, text, post_data, edited_data FROM articles WHERE id = $id");
            $query = $db->prepare($sql);
            $query->execute();
            $article = $query->fetch();
            return $article;
        }
    }

    public static function getArticlesList($page = 1){

        $offset = (intval($page) - 1) * self::SHOW_BY_DEFAULT;
        $db = Db::getConnection();

        $articleList = array();

        $sql = ("SELECT id, title, text, post_data, edited_data FROM articles ORDER BY id DESC LIMIT   " . self::SHOW_BY_DEFAULT . " OFFSET " . $offset);
        $query = $db->prepare($sql);
        $query->execute();
        $articleList = $query->fetchAll();
        return $articleList;
    }

    public static function getTotalNewsNumber()
    {
        $db = Db::getConnection();

        $sql = ("SELECT COUNT(id) AS count FROM `articles`");
        $query = $db->prepare($sql);
        $query->execute();
        $result = $query->fetch();

        return $result['count'];
    }
}