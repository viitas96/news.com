<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$articleList['title'];?></title>
    <link rel="stylesheet" href="../template/css/style.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="header__inner">
                <div class="home"><p class="home">Articole totale: <?=Articles::getTotalNewsNumber()?></p></div>
                <nav class="nav">
                    <ul class="nav__list">
                        <li class="nav__list-item"><a class="nav__list-link" href="/articles/">View list</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <section class="main-article">
        <div class="container">
            <h2 class="post__title"><?=$articleList['title']?></h2>
            <div class="post__text"><?=$articleList['text']?></div>
            <div class="post__dates">
                <div class="post__data">Data postarii: <?=$articleList['post_data']?></div>
                <? if($articleList['edited_data']): ?>
                    <div class="post__edited">Data editarii: <?=$articleList['edited_data']?></div>
                <? endif; ?>
            </div>
            <div class="links">
                <a class="more__link" href="/articles/"> Înapoi</a>
                <a class="popup-open__2 more__link" href="#">Editeaza</a>
            </div>
        </div>
    </section>
    <div class="popup-fade__2">
        <div class="popup__2">
            <a class="popup-close__2" href="#">Inchide</a><br>
            <div class="pop-up__inner">
                <input name="title" type="text" class="title" value="<? echo $articleList['title']?>"> <br>
                <textarea name="text" class="text" cols="30" rows="10" ><?=$articleList['text']?></textarea> <br>
                <button id="<? echo $articleList['id'];?>" class="edit">Submit</button>
            </div>
        </div>
    <script src="/template/js/main.js"></script>
</body>
</html>