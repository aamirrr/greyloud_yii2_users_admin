<?php

namespace app\controllers;

use app\models\User;
use yii\helpers\Url;
use yii\helpers\Json;
use Yii;

class UserController extends BaseController
{
    
    public function actionAdd() {
        $editUser = new User();
        return $this->render('edit', ['editUser' => $editUser, 'isCreating' => true]);
//        if ($editUser->load(Yii::$app->request->post())) {
//            $editUser->save();
//            $status = 1;
//        }
//        return $this->render('edit', ['editUser' => $editUser, 'isCreating' => !isset($status), 'savedStatus' => $status ?? 0]);
    }

    public function actionEdit($id) {
        if (!is_numeric($id)) {
            return $this->redirect(Url::to(['site/index']));
        }
        
        $editUser = User::findOne($id);
        if (!$editUser) {
            return $this->redirect(Url::to(['site/index']));
        }
        
        return $this->render('edit', ['editUser' => $editUser]);

//        if (($editUser->load(\Yii::$app->request->post()) && $editUser->save())) {
//            $status = 2;
//        }
//        return $this->render('edit', ['editUser' => $editUser, 'savedStatus' => $status ?? 0]);
    }

    public function actionSave() {
        $request = \Yii::$app->request;
        if (!$request->isPost) {
            exit();
        }
        
        $data = $request->post();
        
        if (isset($data['User']['id'])) {
            $editUser = User::findOne($data['User']['id']);
        } else {
            $editUser = new User;
        }
        
        if ($editUser->load($data) && $editUser->save()) {
            $response = Yii::$app->response;
            $response->format = \yii\web\Response::FORMAT_JSON;
            $response->data = ['i' => $editUser->id];
            return $response;
        }
        
        exit();
    }

    public function actionDelete() {
        $request = \Yii::$app->request;
        if (!$request->isPost) {
            exit();
        }
        
        $id = $request->post()['UserId'];
        if (empty($id)) {
            exit();
        }
        
        $response = Yii::$app->response;
        $response->format = \yii\web\Response::FORMAT_JSON;
            
        $editUser = User::findOne($id);
        if ($editUser && $editUser->delete() !== false) {
            $response->data = ['i' => $id];
        }
        
        return $response;
    }
}