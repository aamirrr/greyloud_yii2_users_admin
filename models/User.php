<?php

namespace app\models;

use yii\db\ActiveRecord;

class User extends ActiveRecord implements \yii\web\IdentityInterface
{

    public $image;
    public $rating;

    public static function tableName()
    {
        return 'users';
    }

    public function attributeLabels()
    {
        return [
            'fname' => 'Имя',
            'lname' => 'Фамилия',
            'email' => 'Email',
            'password' => 'Пароль',
        ];
    }

    public function rules()
    {
        return [
            [ ['fname', 'lname', 'email'], 'required' ],
            [ 'email', 'email' ],
            [ ['fname'], 'string', 'max' => 50],
            [ ['lname'], 'string', 'max' => 50],
            [ ['password'], 'string', 'max' => 128],
        ];
    }


    /**
     * @inheritdoc
     */
    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    /**
     * @inheritdoc
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {

    }

    /**
     * Override method in order to hash the password
     */
    public function beforeSave($insert) {
        if (!parent::beforeSave($insert)) {
            return false;
        }
        
        if (empty($this->password)) {
            unset($this->password);
        } else {
            $this->password = \Yii::$app->security->generatePasswordHash($this->password);
        }
        
        return true;
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByEmail($email)
    {
        return static::findOne(['email' => $email]);
    }

    /**
     * @inheritdoc
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @inheritdoc
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * @inheritdoc
     */
    public function validateAuthKey($authKey)
    {
        return $this->auth_key === $authKey;
    }

}
