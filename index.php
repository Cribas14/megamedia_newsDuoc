<?php
declare(strict_types=1);

require __DIR__ . '/app/bootstrap.php';
require __DIR__ . '/app/db.php';
require __DIR__ . '/app/ArticleRepository.php';

$repo = new ArticleRepository($pdo);
$articles = $repo->findAll();

$smarty->assign('page_title', 'Noticias');
$smarty->assign('articles', $articles);
$smarty->display('index.tpl');



