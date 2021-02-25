<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de noutati</title>
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
                        <li class="nav__list-item"><a class="nav__list-link popup-open" href="">Adauga o stire</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <section class="main">
        <div class="popup-fade">
            <div class="popup">
                <div class="pop-up__inner">
                    <a class="popup-close" href="#">Inchide</a><br>
                    <input name="title" type="text" class="title"> <br>
                    <textarea name="text" class="text" cols="30" rows="10"></textarea> <br>
                    <button class="add">Submit</button>
                </div>
            </div>
        </div>
        <div class="popup-fade__2">
            <div class="popup__2">
                <a class="popup-close__2" href="#">Закрыть</a>
                <input name="title" type="text" class="title" value="<? echo $articleItem['title']?>"> <br>
                <textarea name="text" class="text" cols="30" rows="10" value="<?=$articleItem['text']?>"></textarea> <br>
                <button class="edit">Submit</button>
            </div>
        </div>
        <div class="container">
            <? foreach ($articleList as $articleItem):?>
            <div class="post">
                <div class="post__inner">
                    <h2 class="post__title">ID: <?=$articleItem['id']?>| <?=$articleItem['title']?></h2>
                    <div class="post__dates">
                        <div class="post__data">Data postarii: <?=$articleItem['post_data']?></div>
                        <? if($articleItem['edited_data']): ?>
                        <div class="post__edited">Data editarii: <?=$articleItem['edited_data']?></div>
                        <? endif; ?>
                    </div>
                    <div class="links">
                        <a class="more__link" href="/articles/<? echo $articleItem['id'];?>">Mai mult</a>
                        <a id="<? echo $articleItem['id'];?>" class="delete_data more__link" style="cursor: pointer">Sterge</a>
                    </div>
                </div>
            </div>
            <? endforeach; ?>

            <? echo $pagination->get();?>
        </div>
    </section>
    <script src="/template/js/main.js"></script>
</body>
</html>