<?php 
return array(
    'articles/([0-9]+)' => 'articles/view/$1',
    'articles/page-([0-9]+)' => 'articles/index/$1',
    'articles' => 'articles/index',
    'page-([0-9]+)' => 'articles/index/$1',
    '' => 'articles/index'
);