<?php

use app\models\Mark;
use app\models\Model;
use app\models\Status;
use yii\bootstrap5\Html;

?>
<div class="card" style="width: 18rem;">
    <div class="card-body">
        <h5 class="card-title">Заявка № <?= $model->id ?> </h5>
        <div class="gap-2">
            <div>
                Статус - <?= Status::getStatuses()[$model->status_id] ?>
            </div>
            <div>
                Модель - <?= Model::getModels()[$model->model_id] ?>
            </div>
            <div>
                Марка - <?= Mark::getMarks()[$model->mark_id] ?>
            </div>
            <div>
                Дата - <?= Yii::$app->formatter->asDate($model->date, 'php:d.m.Y') ?>
            </div>
            <div>
                Время - <?= Yii::$app->formatter->asTime($model->time, 'php:H:i.s') ?>
            </div>
        </div>
        <?= Html::a('Просмотр', ['view', 'id' => $model->id], ['class' => 'btn btn-primary mt-2']) ?>
    </div>
</div>