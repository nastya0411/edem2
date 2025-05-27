<?php

use app\models\Mark;
use app\models\Model;
use app\models\PayType;
use app\models\Status;
use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\Order $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="order-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'address')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'contact')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mark_id')->dropDownList(Mark::getMarks(),['prompt' => 'Выберете марку'])?>

    <?= $form->field($model, 'model_id')->dropDownList(Model::getModels(),['prompt' => 'Выберете модель']) ?>

    <div class="d-flex justify-content-start gap-3">
        
            <?= $form->field($model, 'date')->textInput(['type' => 'date']) ?>
        
            <?= $form->field($model, 'time')->textInput(['type' => 'time'])?>

    </div>

    <?= $form->field($model, 'pay_type_id')->dropDownList(PayType::getPayTypes(),['prompt' => 'Выберете тип оплаты']) ?>

    <?= $form->field($model, 'rules')->checkbox()?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
