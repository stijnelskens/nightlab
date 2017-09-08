<?php

require_once __DIR__ . '/../vendor/autoload.php';

use Brendt\Stitcher\App;

echo App::init(__DIR__ . '/config.dev.yml')::get('app.dev.controller')->run();
