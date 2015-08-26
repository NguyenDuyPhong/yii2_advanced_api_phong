<?php

$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

// phong.nguyen 20150821: ref: ...\yii2_advanced_api_nintriva\api\config\main.php  
$callback = isset($_REQUEST['callback']) ? $_REQUEST['callback'] : false;
$format = $callback ? 'jsonp' : 'json';

return [
    'id' => 'app-api',
    'basePath' => dirname(__DIR__),    
    'bootstrap' => ['log'],
    'modules' => [
        'v1' => [
            'basePath' => '@app/modules/v1',
            'class' => 'api\modules\v1\Module'
        ]
    ],
    'components' => [        
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => false,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            // 'enableStrictParsing' => true,
            // 'showScriptName' => false,
            'rules' => [
                [
                    'class' => 'yii\rest\UrlRule', 
                    'controller' => 'v1/country',
                    // 'tokens' => [ // maybe Unable to resolve the request "v1/countries/AU"  
                        // '{id}' => '<id:\\w+>'
                    // ]
                    
                ]
            ],        
        ], 
		'request' => [
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ]
        ],  
        'response' => [
            'class' => 'yii\web\Response',
            'format' => $format, // json or jsonp
            'on beforeSend' => function ($event) {
                    $callback = isset($_REQUEST['callback']) ? $_REQUEST['callback'] : false;
                    $response = $event->sender;
                    if ($response->data !== null) {
                        $response->data = [
                            'success' => $response->isSuccessful,
                            'data' => $response->data,
                        ];
                        if ($callback) {
                            $response->data += ['callback' => $acallback];
                        }
                        $response->statusCode = 200;
                    }
                },
        ],
    ],
    'params' => $params,
];



