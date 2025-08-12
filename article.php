<?php
declare(strict_types=1);

require __DIR__ . '/app/bootstrap.php';
require __DIR__ . '/app/db.php';
require __DIR__ . '/app/ArticleRepository.php';

// 1. Obtener el slug de la URL
$slug = $_GET['slug'] ?? '';
if ($slug === '') {
  http_response_code(400);
  echo "Falta el parámetro 'slug'.";
  exit;
}

// 2. Buscar el artículo
$repo = new ArticleRepository($pdo);
$article = $repo->findBySlug($slug);

if (!$article) {
  http_response_code(404);
  echo "Artículo no encontrado.";
  exit;
}

// 3. Convertir YouTube URL a formato embed (si existe)
function youtube_to_embed(?string $url): ?string {
  if (!$url) return null;
  if (preg_match('/youtube\\.com\\/watch\\?v=([^&]+)/', $url, $matches)) {
    return 'https://www.youtube.com/embed/' . $matches[1];
  }
  if (preg_match('/youtu\\.be\\/([^?]+)/', $url, $matches)) {
    return 'https://www.youtube.com/embed/' . $matches[1];
  }
  return $url;
}

$article['embed_url'] = youtube_to_embed($article['youtube_url'] ?? null);

// 4. Pasar datos a la plantilla
$smarty->assign('page_title', $article['title']);
$smarty->assign('article', $article);
$smarty->display('article.tpl');
