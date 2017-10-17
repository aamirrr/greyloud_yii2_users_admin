<?php

function debug($arr){
    echo '<pre>' . print_r($arr, true) . '</pre>';
}

function downtime($arr){
    $downtime = array();
    foreach ($arr as $a) {
        if ($a['continue_at'] == !null) {
            $paused_at   = date_create($a['paused_at']);
            $continue_at = date_create($a['continue_at']);
            $downtime[]  = $continue_at->getTimestamp() - $paused_at->getTimestamp();
        }
    }
    return array_sum($downtime);
}

function hasNumber($number, $id){
    $ok = \app\models\Schet::find()->asArray()->where(['number' => $number])->andWhere(['id_user'=> $id])->all();
    if ($ok == !null)
        return true;
    else {
        return false;
    }
}