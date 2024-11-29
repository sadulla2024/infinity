<section class="products_section" id="products">
    <div class="container">
        <h1 class="section_title"><?= Yii::t('main','products')?></h1>
        <div class="products_row">
            <?php if (!empty($products)) : ?>
            <?php foreach ($products as $product) : ?>
                    <?php
                        if($product->main_image && file_exists(Yii::getAlias('@frontend') . '/web' . Yii::$app->params['uploads_url'] . 'post/' . $product->id . '/l_' . $product->main_image )) {
                            $image = Yii::$app->params['frontend'] . Yii::$app->params['uploads_url'] . 'post/' . $product->id . '/l_' .  $product->main_image;
                        }else{
                            $image = '/images/default/m_post.png';
                    }
                    ?>
                <div class="product_item">
                    <div>
                        <div class="title"><?=$product->getLang('title')?></div>
                        <div>
                            <?=\common\components\StaticFunctions::kcfinder($product->getLang('anons'))?>
                        </div>
                        <a href="#" class="more">
                            <?= Yii::t('main','more')?>
                            <img src="img/icons/arrow_right.svg" alt="">
                        </a>
                    </div>
                    <div>
                        <div class="persent"><?=$product->getLang('second_title')?></div>
                        <p class="desc2">Годовых</p>
                    </div>
                    <img src="<?=$image?>" alt="" class="product_image">
                </div>
            <?php endforeach; ?>
            <?php endif; ?>
        </div>
    </div>
</section>