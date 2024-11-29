<?php

namespace frontend\widgets;
use common\models\Post;
use yii\base\Widget;

class SectionProducts extends Widget
{
    public function run()
    {
        $products = Post::find()->where(['status'=>1])->andWhere(['category'=>3])->orderBy(['created_date'=>SORT_ASC])->all();
        return $this->render('products',[
            'products' => $products,
        ]);
    }
}