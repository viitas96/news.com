<?php

class ArticlesController
{
    public function actionIndex($page = 1){
        $articleList = array();
        $_COOKIE['lastpage'] = 'page-' . $page;
        $articleList = Articles::getArticlesList($page);
        $total = Articles::getTotalNewsNumber();

        $pagination = new Pagination($total, $page, Articles::SHOW_BY_DEFAULT, 'page-');
        require_once('views/v_index.php');
        return true;
    }

    public function actionView($id){
        $articleList = Articles::getArticlesById($id);
        if ($articleList){
            require_once('views/v_article.php');
        }
        else {
            require_once('views/error404.html');
        }
        return true;
    }

}