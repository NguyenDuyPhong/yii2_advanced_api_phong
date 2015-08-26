<?php
$config = [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=yii2_advanced_api_phong;port=3312',
            'username' => 'root',
            'password' => 'deadface',
            'charset' => 'utf8',
			 
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
        ],
    ],
	
];

// // if (!YII_ENV_TEST) {
    // // configuration adjustments for 'dev' environment
    // $config['bootstrap'][] = 'debug';
    // $config['modules']['debug'] = 'yii\debug\Module';

    // $config['bootstrap'][] = 'gii';
    // $config['modules']['gii'] = 'yii\gii\Module';
// // }  

return $config;