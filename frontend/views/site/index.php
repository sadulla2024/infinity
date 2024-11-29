<?php

$this->title = \common\components\StaticFunctions::getSettings('title');

    $this->registerMetatag([
        'property' => 'og:description',
        'content' => 'Infinity'
    ])
?>

<?= frontend\widgets\SectionAbout::widget();?>

<main>
    <?= frontend\widgets\SectionProducts::widget();?> 
    <?= frontend\widgets\Strategies::widget();?> 
    <?= frontend\widgets\Calculator::widget();?> 
    <?= frontend\widgets\SectionNews::widget();?> 
    <?= frontend\widgets\SectionFaq::widget();?> 
</main>


  