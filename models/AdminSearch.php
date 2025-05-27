<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Order;

/**
 * AdminSearch represents the model behind the search form of `app\models\Order`.
 */
class AdminSearch extends Order
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'mark_id', 'model_id', 'pay_type_id', 'status_id', 'rules'], 'integer'],
            [['address', 'contact', 'date', 'time', 'created_at', 'reason'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Order::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 3 
            ]
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'mark_id' => $this->mark_id,
            'model_id' => $this->model_id,
            'date' => $this->date,
            'time' => $this->time,
            'created_at' => $this->created_at,
            'pay_type_id' => $this->pay_type_id,
            'status_id' => $this->status_id,
            'rules' => $this->rules,
        ]);

        $query->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'contact', $this->contact])
            ->andFilterWhere(['like', 'reason', $this->reason]);

        return $dataProvider;
    }
}
