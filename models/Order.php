<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "order".
 *
 * @property int $id
 * @property string $address
 * @property string $contact
 * @property int $mark_id
 * @property int $model_id
 * @property string $date
 * @property string $time
 * @property string $created_at
 * @property int $pay_type_id
 * @property int $status_id
 * @property string|null $reason
 * @property int|null $rules
 *
 * @property Mark $mark
 * @property Model $model
 * @property PayType $payType
 * @property Status $status
 */
class Order extends \yii\db\ActiveRecord
{
    const CANCEL = 'CANCEL';
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'order';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['address', 'contact', 'mark_id', 'model_id', 'date', 'time', 'pay_type_id', 'status_id', 'user_id'], 'required'],
            [['mark_id', 'model_id', 'pay_type_id', 'status_id', 'rules', 'user_id'], 'integer'],
            [['date', 'time', 'created_at'], 'safe'],
            [['reason'], 'string'],
            [['address', 'contact'], 'string', 'max' => 255],
            [['pay_type_id'], 'exist', 'skipOnError' => true, 'targetClass' => PayType::class, 'targetAttribute' => ['pay_type_id' => 'id']],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::class, 'targetAttribute' => ['status_id' => 'id']],
            [['model_id'], 'exist', 'skipOnError' => true, 'targetClass' => Model::class, 'targetAttribute' => ['model_id' => 'id']],
            [['mark_id'], 'exist', 'skipOnError' => true, 'targetClass' => Mark::class, 'targetAttribute' => ['mark_id' => 'id']],
            [['rules'], 'required', 'requiredValue' => 1, 'message' => 'Вы ознакомлены с правилами услуги'],
            [['reason'], 'required', 'on' => self::CANCEL]
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'user_id',
            'address' => 'Address',
            'contact' => 'Contact',
            'mark_id' => 'Mark ID',
            'model_id' => 'Model ID',
            'date' => 'Date',
            'time' => 'Time',
            'created_at' => 'Created At',
            'pay_type_id' => 'Pay Type ID',
            'status_id' => 'Status ID',
            'reason' => 'Reason',
            'rules' => 'Вы ознакомлены с правилами услуги',
        ];
    }

    /**
     * Gets query for [[Mark]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMark()
    {
        return $this->hasOne(Mark::class, ['id' => 'mark_id']);
    }

    /**
     * Gets query for [[Model]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getModel()
    {
        return $this->hasOne(Model::class, ['id' => 'model_id']);
    }

    /**
     * Gets query for [[PayType]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPayType()
    {
        return $this->hasOne(PayType::class, ['id' => 'pay_type_id']);
    }

    /**
     * Gets query for [[Status]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStatus()
    {
        return $this->hasOne(Status::class, ['id' => 'status_id']);
    }
}
