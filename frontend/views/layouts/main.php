<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\widgets\ActiveForm;
use yii\web\View;

AppAsset::register($this);

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>

    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?=\common\components\StaticFunctions::getSettings('title')?>">
    <meta property="og:title" content="<?=\common\components\StaticFunctions::getSettings('title')?>"/>
    <meta property="og:image" content="/images/logo.png" />

    <title><?= Html::encode($this->title) ?></title>
    
    <?= Html::csrfMetaTags() ?>

    <?php $this->head() ?>

</head>

<body>

    <?php $this->beginBody() ?>

    <!-- Boxed Layout -->
    <div class="wrapper">

        <?= \frontend\widgets\Header::widget();?>

        <?= $content;?>

        <?= \frontend\widgets\Footer::widget();?>

        <div class="modal_back"></div>

    </div>
    <!-- End Boxed Layout -->


    <?php $this->endBody() ?>

</body>

</html>

<?php $this->endPage() ?>
