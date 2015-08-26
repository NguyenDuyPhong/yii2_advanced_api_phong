<?php

namespace api\modules\v1\controllers;

use yii\rest\ActiveController;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\ContentNegotiator;
use yii\web\Response;
use yii\web\ForbiddenHttpException;

/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
class CountryController extends ActiveController
{
    public $modelClass = 'api\modules\v1\models\Country';    
	
	 /**
     * @Note: By default OPTIONS not need to be authorized, if any action not need authorization include inside array
     * Header: Authorization , Value: Bearer <auth_key> (need space between Bearer and auth_key)
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        // $action = Yii::$app->requestedAction->id; // == actions: 'create', 'index'...
        // //create should removed if we are not allowing to create
        // if (!in_array($action, ['options', 'create', 'index'])) {
            $behaviors['authenticator'] = [
                'class' => HttpBearerAuth::className(),
            ];
			
        // } 
		
		// //using: ContentNegotiator, Response. 
        // $behaviors['contentNegotiator'] = [
            // 'class' => ContentNegotiator::className(),
            // 'formats' => [
                // 'application/json' => Response::FORMAT_JSON,
            // ],
        // ];
		
        return $behaviors;
    }
	
	// public $serializer = [
        // 'class' => 'yii\rest\Serializer',
        // // 'collectionEnvelope' => 'dataProvider',
        // 'defaultFields' => ['code', 'name'],
    // ];

	
	 
	
}


