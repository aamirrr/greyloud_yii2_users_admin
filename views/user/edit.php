<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$isNewUser = $isCreating ?? false;

$this->registerAssetBundle(\yii\web\JqueryAsset::className(), \yii\web\View::POS_HEAD);
$this->title = 'User Editor' ?>

<div class="add-user">
    <?php $form = ActiveForm::begin(['action' => ['user/save'], 'options' => ['id' => 'UserForm']]); ?>

    <?= $form->field($editUser, 'fname')->textInput() ?>
    <?= $form->field($editUser, 'lname')->textInput() ?>
    <?= $form->field($editUser, 'email')->textInput() ?>
    <?= $form->field($editUser, 'password')->passwordInput(['required' => $isNewUser, 'value' => '']) ?>
    <?php if (!$isNewUser) {
        echo $form->field($editUser, 'id')->hiddenInput()->label(false);
    } ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary', 'name' => 'advert-button']) ?>
    </div>

    <?php ActiveForm::end() ?>
</div>
<script type="text/javascript">
(function($){
    $('body').on('beforeSubmit', '#UserForm', function () {
        var form = $(this);
        if (form.find('.has-error').length) {
            return false;
        }
        
        // submit form
        $.ajax({
            url: form.attr('action'),
            type: "POST",
            data: form.serialize(),
            success: function (r) {
                var message;
                if ($("#user-id").length === 0) {
                    var input = $('<input>').attr({
                        type: 'hidden',
                        id: 'user-id',
                        name: 'User[id]'
                    });
                    input.val(r.i);
                    input.appendTo('#UserForm');
                    message = "User created successfully.";
                } else {
                    message = "User updated successfully.";
                }
                alert(message)
                //$.jGrowl(message, {header: 'Сообщение', life: 15000, theme: 'successMessage'});
            },
            error: function () {
                console.log('internal server error');
            }
        });
        
        return false;
     });
})(jQuery)
</script>