<?php
use common\models\Menu;

function renderFooterMenu($id)
{

    $out = '';

    //$menu = Menu::find()->where('status=1')->andWhere(['id' => $id, 'type' => 0])->one();
    $menus = Menu::find()->where('status=1')->andWhere(['type'=>1])->andWhere(['id' => $id])->all();

    foreach ($menus as $menu) {
        $out .= '<li>';
        $out .= '<a href="' . $menu->url . '">' . $menu->title . '</a>';

        if ($menu->type)

            $out .= '</li>';
    }

    return $out;
}

 ?>

<footer id="footer">
    <div class="container">
        <div class="footer_row">
            <div class="footer_left">
                <a href="#" class="brand_logo">
                    <img src="img/icons/logo1.png" alt="">
                </a>
                <form>
                    <div class="subscribe_title">Подписывайтесь</div>
                    <input type="email" placeholder="Email">
                    <button>Отправить</button>
                </form>
            </div>
            <div>
                <ul class="header_links">
                    <li><a href="#">Инвесторам</a></li>
                    <li><a href="#" class="active">Заемщикам</a></li>
                    <li><a href="#">Облигации</a></li>
                    <li><a href="#">Энциклопедия инвестора</a></li>
                    <li><a href="#">О нас</a></li>
                    <li><a href="#">Контакты</a></li>
                </ul>
                <p class="footer_desc">Любая информация, представленная на данном сайте, носит исключительно информационный характер и ни при каких условиях не является публичной офертой, определяемой положениями статьи 437 ГК РФ. </p>
            </div>
            <div class="footer_right">
                <div class="social">
                    <p>Мы в соц. сетях</p>
                    <div>
                        <a href="#">
                            <img src="img/icons/tg.svg" alt="">
                        </a>
                        <a href="#">
                            <img src="img/icons/ig.svg" alt="">
                        </a>
                        <a href="#">
                            <img src="img/icons/yt.svg" alt="">
                        </a>
                    </div>
                </div>
                <form>
                    <div class="subscribe_title">Подписывайтесь</div>
                    <input type="email" placeholder="Email">
                    <button>Отправить</button>
                </form>
            </div>
        </div>
        <div class="footer_links">
            <p>©2024. Все права защищены</p>
            <a href="#">Политика конфиденциальности</a>
        </div>
    </div>
</footer>