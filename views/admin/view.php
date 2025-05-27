<?php

use app\models\Mark;
use app\models\Model;
use app\models\PayType;
use app\models\Status;
use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Order $model */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Orders', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="order-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Назад', ['index', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            // [
            //     'attribute' => 'user_id',
            //     'value' => $model->user->full_name
            // ],
            'address',
            'contact',
            [
                'attribute' => 'mark_id',
                'value' => Mark::getMarks()[$model->mark_id]
            ],
            [
                'attribute' => 'model_id',
                'value' => Model::getModels()[$model->model_id]
            ],
            [
                'attribute' => 'date',
                'value' => Yii::$app->formatter->asDate($model->date, 'php:d.m.Y')
            ],

            [
                'attribute' => 'time',
                'value' => Yii::$app->formatter->asTime($model->time, 'php:H:i.s')
            ],
            [
                'attribute' => 'created_at',
                'value' => Yii::$app->formatter->asDatetime($model->created_at, 'php:d.m.Y H:i.s')
            ],

            [
                'attribute' => 'pay_type_id',
                'value' => PayType::getPayTypes()[$model->pay_type_id]
            ],
            [
                'attribute' => 'status_id',
                'value' => Status::getStatuses()[$model->status_id]
            ],
            [
                'attribute' => 'reason',
                'format' => 'ntext',
                'visible' => !empty($model->reason),
                'value' => $model->reason
            ],
            [
                'attribute' => 'rules',
                'value' => 'отмечено'
            ],


        ],
    ]) ?>

</div>