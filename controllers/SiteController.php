<?php

namespace app\controllers;

use app\models\User;
use Yii;
use yii\data\Pagination;

class SiteController extends BaseController
{

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => ['class' => 'yii\web\ErrorAction']
        ];
    }

    /**
     * Displays the home-page
     *
     * @return string
     */
    public function actionIndex()
    {
        $query = User::find();
        
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 10]);
        $users = $query->orderBy(['id' => SORT_ASC])->offset($pages->offset)->limit(10)->all();

        return $this->render('index', compact('users', 'pages'));
    }

}
