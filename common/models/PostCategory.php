<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "post_category".
 *
 * @property integer $id
 * @property string $name
 * @property integer $status
 * @property integer $order_by
 */
class PostCategory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'post_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['status', 'order_by','parent'], 'integer'],
            [['name'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('main', 'ID'),
            'name' => Yii::t('main', 'Name'),
            'status' => Yii::t('main', 'Status'),
            'order_by' => Yii::t('main', 'Order By'),
            'parent'=>Yii::t('main', 'Parent'),
        ];
    }

    public function getLang($column, $lang = null)
    {

        $lang = $lang ? $lang : Yii::$app->language ;
        if($lang == Yii::$app->params['main_language']) {
            $model = Yii::$app->db->createCommand('Select * from '.$this->tableName().' where id=' . $this->id)->queryOne();
        } else {
            $id = Languages::find()->filterWhere(['abb' => $lang])->one()->id;
            
            $model = Yii::$app->db->createCommand('Select * from '.$this->tableName().'_lang where parent='. $this->id.' and lang='.$id)->queryOne();
        }
        return $model[$column];
    }

    public static function getModels($where = '1')
    {
        $models = [];
        foreach(PostCategory::find()->where('status>-1 AND '.$where)->orderBy(['order_by' => SORT_ASC])->all() as $model)
        {
            $name = $model->name;
            if(!empty($name))
                $models[]=['id' => $model->id, 'name' => $model->name];
        }

        return $models;
    }

    public static function getLangModels($where = '1')
    {
        $models = [];
        foreach(PostCategory::find()->where('status>-1 AND '.$where)->orderBy(['order_by' => SORT_ASC])->all() as $model)
        {
            $name = $model->getLang('name');
            if(!empty($name))
                $models[]=['id' => $model->id, 'name' => $model->getLang('name')];
        }

        return $models;
    }
}
