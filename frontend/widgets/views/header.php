<?php

use common\models\Menu;

function renderMenu($id){

    $out = '';
    $menu = Menu::find()->where('status=1')->andWhere(['id' => $id, 'type' => 0])->one();
    $_query = Menu::find()->where('status=1')->andWhere(['parent' => $id, 'type' => 0]);

    if( $_query->exists() )
    {
        $out .= '<li class="menu-item-has-children"><a href="#"> <span>';
        $out .= $menu->title . '</span></a>';
        $out .= '<ul class="sub-menu">';
        $items = $_query->orderBy(['order_by' => SORT_ASC])->all();
        foreach ($items as $item){
            $out .= renderMenu($item->id);
        }

        $out .= '</ul></li>';

    } else {

        $out .= '<li><a href="' .$menu->url. '">';
        $out .= $menu->title.'</a></li>';

    }


    return $out;
}

    $lang = Yii::$app->session->get('lang');
    if (empty($lang)){
        $lang = Yii::$app->language;
    }

?>

<!-- Header start -->
<header>
    <div class="container">
        <div class="header_row">
            <span class="hamburger">
                <img src="img/icons/hamburger.svg" alt="">
            </span>
            <a href="index.html" class="brand_logo">
                <img src="img/icons/logo1.png" alt="">
            </a>
            <div class="header_right">
                <ul class="header_links">
                    <li><a href="index.html#hero">Инвесторам</a></li>
                    <li><a href="index.html#products" class="active">Заемщикам</a></li>
                    <li><a href="index.html#calculator">Облигации</a></li>
                    <li><a href="index.html#news">Энциклопедия инвестора</a></li>
                    <li><a href="index.html#faq">О нас</a></li>
                    <li><a href="index.html#footer">Контакты</a></li>
                </ul>
                <div class="header_actions">
                    <div class="language">
                        <a href="#" class="active">RU</a>
                        |
                        <a href="#">EN</a>
                    </div>
                    <a href="login.html" class="btn_">Регистрация</a>
                    <a href="dashboard.html" class="login_icon">
                        <img src="img/icons/login_icon.svg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="header_menu">
        <div>
            <a href="#" class="mobile_logo">
                <img src="img/icons/logo1.png" alt="">
            </a>
            <ul class="mobile_menu">
                <li>
                    <a href="#" class="active">
                        <img src="img/icons/home_icon.svg" alt="">
                        Главная
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/icons/finance_icon.svg" alt="">
                        Рынок
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/icons/briefcase_icon.svg" alt="">
                        Портфель
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/icons/diagram_icon.svg" alt="">
                        Аналитика платформы
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/icons/settings_icon.svg" alt="">
                        Настройки
                    </a>
                </li>
            </ul>
            <a href="#" class="btn_">Регистрация</a>
            <div class="support">
                Служба поддержки
                <a href="tel:+88009990000">8 800-999-00-00</a>
                <a href="mailto:support@gmail.com">support@gmail.com</a>
            </div>
        </div>
        <div class="language">
            <a href="#" class="active">RU</a>
            |
            <a href="#">EN</a>
        </div>
    </div>
</header>
<!-- Header End -->
