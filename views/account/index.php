<?php

use app\models\Order;
use yii\bootstrap5\LinkPager;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\widgets\ListView;
use yii\widgets\Pjax;
/** @var yii\web\View $this */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Orders';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Order', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>

    <?= ListView::widget([
        'dataProvider' => $dataProvider,
        'layout' => "<div class='row row-cols-sm-1 row-cols-md-3 carts-style'>{items}</div>\n{pager}",
        'itemOptions' => ['class' => 'item'],
        'itemView' => 'item',
        'pager' => ['class' => LinkPager::class]
    ]) ?>

    <?php Pjax::end(); ?>

</div>
