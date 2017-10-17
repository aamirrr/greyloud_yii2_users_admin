<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = 'Admin - Users';
$this->registerAssetBundle(\yii\web\JqueryAsset::className(), \yii\web\View::POS_HEAD);
?>

<div class="site-index">
    <table class="table table-striped">
        <thead class="">
            <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Created At</th>
            </tr>
        </thead>
        <?php foreach ($users as $key => $user): ?><tr data-id="<?= $user->id ?>">
            <th scope="row"><?= $user->id ?></th>
            <td><?= Html::a($user->fname, ['user/edit', 'id' => $user->id]) ?></td>
            <td><?= Html::a($user->lname, ['user/edit', 'id' => $user->id]) ?></td>
            <td><?= $user->insert_at ?><button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">×</span>
                <span class="sr-only">Close</span>
            </button></td>
        </tr><?php endforeach ?>
    </table><?= LinkPager::widget(['pagination' => $pages]);
?></div>
<script type="text/javascript">
(function($){
    $('button.close').bind('click',function(e) {
        e.preventDefault();
        if(!confirm('Are you sure you want to delete the user?')) return;
        
        $.ajax({
            url: "<?php echo Yii::$app->getUrlManager()->createUrl('user/delete')  ; ?>",
            type: "POST",
            data: {UserId: $(this).closest('tr').data('id')},
            success: function (r) {
                var tr = $("[data-id='" + r.i + "']");

                if (!tr.length) { return }

                tr.find('td').fadeOut('fast',  function(){ 
                    tr.remove();                    
                });
            },
            error: function () {
                console.log('internal server error');
            }
        });
    })
})(jQuery)
</script>