<?php

namespace frontend\widgets;
use common\models\News;
use yii\base\Widget;

class SectionAbout extends Widget
{
    public function run()
    {
        return $this->render('about',[

        ]);
    }
}