<?php

/** @var yii\web\View $this */

use yii\web\JqueryAsset;

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron text-center bg-transparent mt-5 mb-5">
        <h1 class="display-4 main-text"></h1>


    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4 mb-3">
                <h2>Heading</h2>

            </div>
            <div class="col-lg-4 mb-3">
                <h2>Heading</h2>


            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>


            </div>
        </div>


    </div>
</div>

<?php 
    $this->registerJsFile("/js/animation.js", ["depends" => JqueryAsset::class])
?>
