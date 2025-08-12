<?php
declare(strict_types=1);

$cfg = $config['db'];
$dsn = sprintf(
  'mysql:host=%s;port=%d;dbname=%s;charset=%s',
  $cfg['host'],
  $cfg['port'],
  $cfg['name'],
  $cfg['charset']
);

try {
  $pdo = new PDO($dsn, $cfg['user'], $cfg['pass'], [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  ]);
} catch (PDOException $e) {
  http_response_code(500);
  echo "Error de conexión a la base de datos: " . htmlspecialchars($e->getMessage());
  exit;
}
