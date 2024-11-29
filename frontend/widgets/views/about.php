<section class="hero" id="hero">
    <div class="container">
        <div class="hero_row">
            <div class="hero_left">
                <h1 class="section_title"> <?= Yii::t('main','about_title')?><img src="img/rocet.png" alt=""></h1>
                <p class="desc"><?= Yii::t('main','about_title_bottom')?></p>
                <div class="hero_actions">
                    <a href="#" class="btn_"><?= Yii::t('main','demo_btn')?></a>
                    <a href="#" class="btn_ btn_active"><?= Yii::t('main','consultation')?></a>
                </div>
                <div class="satisfied_users">
                    <div>
                        <img src="img/user1.png" alt="">
                        <img src="img/user2.png" alt="">
                        <img src="img/user3.png" alt="">
                        <img src="img/user4.png" alt="">
                        <span><?= Yii::t('main','follower_count')?>+</span>
                    </div>
                    <div>
                        <span><?= Yii::t('main','follower_count')?>+</span> <p><?= Yii::t('main','follower_text')?></p>
                    </div>
                </div>
            </div>
            <div class="hero_right">
                <img src="img/hero_image.png" alt="" class="hero_image">
                <div class="hero_actions">
                    <a href="#" class="btn_"><?= Yii::t('main','demo_btn')?></a>
                    <a href="#" class="btn_ btn_active"><?= Yii::t('main','consultation')?></a>
                </div>
            </div>
        </div>
    </div>
</section>