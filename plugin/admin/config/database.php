<?php
return [
    'default' => 'mysql',
    'connections' => [
        'mysql' => [
            'driver' => 'mysql',
            'host' => '172.17.0.1',
            'port' => '3306',
            'database' => 'car_charge_service',
            'username' => 'root',
            'password' => '123456',
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_general_ci',
            'prefix' => '',
            'strict' => true,
            'engine' => null,
        ],
    ],
];