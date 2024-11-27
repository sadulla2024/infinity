<?php

namespace frontend\assets;

use yii\web\AssetBundle;

class AppAsset extends AssetBundle
{    
    
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        
        "fonts/stylesheet.css",
        "libs/ion.rangeSlider.min.css",
        "libs/swiper-bundle.min.css",
        "style.css?v=1",
    ];

    public $js = [

        "libs/jquery.min.js",
        "libs/chart_4_3_0.js",
        "libs/chartjs-plugin-datalabels.min.js",
        "libs/ion.rangeSlider.min.js",
        "libs/swiper-bundle.min.js",
        "libs/swiper-bundle.min.js",
        "main.js",

    ];

      public $depends = [
//          'yii\web\yiiAsset',
          'yii\web\JqueryAsset'
      ];

}
