<?php

use app\models\Mark;
use app\models\Model;
use app\models\Status;
use yii\bootstrap5\Html;

?>
<div class="card my-3">
    <div class="card-header">
        Заявка № <?= $model->id ?>
    </div>
    <div class="card-body">
        <div class="gap-2">
            <!-- <div>
                Пользователь - <? #= $model->user_id->full_name 
                                ?>
            </div> -->
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
        <div class="d-flex gap-3">
            <?= Html::a('Просмотр', ['view', 'id' => $model->id], ['class' => 'btn btn-primary mt-2']) ?>
            <?= $model->status_id === Status::getStatusId('создано')
                ? Html::a('Одобрить', ['work', 'id' => $model->id], ['class' => 'btn btn-success mt-2', 'data-method' => 'post', 'data-pjax' => 0])
                . Html::a('Отклонить', ['cancel', 'id' => $model->id], ['class' => 'btn btn-danger mt-2', 'data-method' => 'post', 'data-pjax' => 0])
                : ''  ?>

            <?= $model->status_id === Status::getStatusId('одобрено')
                ? Html::a('Выполнить', ['apply', 'id' => $model->id], ['class' => 'btn btn-success mt-2', 'data-method' => 'post', 'data-pjax' => 0])
                . Html::a('Отклонить', ['cancel', 'id' => $model->id], ['class' => 'btn btn-danger mt-2', 'data-method' => 'post', 'data-pjax' => 0])
                : ''  ?>


        </div>
    </div>
</div>
</div>