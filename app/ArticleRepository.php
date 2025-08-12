<?php
declare(strict_types=1);

class ArticleRepository {
  private PDO $pdo;

  public function __construct(PDO $pdo) {
    $this->pdo = $pdo;
  }

  public function findAll(): array {
    $stmt = $this->pdo->query("
      SELECT 
        id,
        title,
        slug,
        summary,
        author,
        published_at,
        DATE_FORMAT(published_at, '%d-%m-%Y %H:%i') AS published_label,
        hero_image_url
      FROM articles
      ORDER BY published_at DESC
    ");
    return $stmt->fetchAll();
  }

  public function findBySlug(string $slug): ?array {
    $stmt = $this->pdo->prepare("
      SELECT 
        id,
        title,
        slug,
        summary,
        body,
        author,
        published_at,
        DATE_FORMAT(published_at, '%d-%m-%Y %H:%i') AS published_label,
        hero_image_url,
        youtube_url
      FROM articles
      WHERE slug = :slug
      LIMIT 1
    ");
    $stmt->execute([':slug' => $slug]);
    $row = $stmt->fetch();
    return $row ?: null;
  }
}

