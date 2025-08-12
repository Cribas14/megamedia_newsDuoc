<?php
declare(strict_types=1);
error_reporting(E_ALL);
ini_set('display_errors', '1');
date_default_timezone_set('America/Santiago');

$root = __DIR__ . '/..'; // (esto ya estaba bien)

// Config de tu app (ahora en app/)
require $root . '/app/config.php';

// Cargar Smarty 5 (stub)
require $root . '/libs/Smarty.class.php';

// Instanciar (namespace de Smarty 5)
$smarty = new \Smarty\Smarty();

// Directorios de plantillas/compilados
$smarty->setTemplateDir($root . '/templates');
$smarty->setCompileDir($root . '/templates_c');

// Variables globales
$smarty->assign('base_url', $config['base_url']);
$smarty->assign('current_year', date('Y'));
$smarty->assign('ga4_id', $config['ga4_measurement_id']);
