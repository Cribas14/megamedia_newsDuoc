CREATE DATABASE IF NOT EXISTS megamedia_newsduoc
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE megamedia_newsduoc;

CREATE TABLE IF NOT EXISTS articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  slug VARCHAR(160) NOT NULL UNIQUE,
  summary VARCHAR(400) NULL,
  body MEDIUMTEXT NOT NULL,
  author VARCHAR(120) NOT NULL,
  published_at DATETIME NOT NULL,
  hero_image_url VARCHAR(500) NULL,
  youtube_url VARCHAR(500) NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO articles
(title, slug, summary, body, author, published_at, hero_image_url, youtube_url) VALUES
('Lanzamiento de la nueva plataforma de streaming',
 'lanzamiento-plataforma-streaming',
 'Una nueva plataforma llega al mercado con contenido original.',
 '<p>La industria del streaming continúa creciendo y esta nueva plataforma apuesta por producciones propias…</p>',
 'María Torres',
 '2025-08-10 19:34:15',
 'https://picsum.photos/1200/500?random=11',
 'https://www.youtube.com/watch?v=qpJCalULQBg'),

('Informe especial: impacto de la IA en los medios',
 'impacto-ia-en-medios',
 'Cómo la IA se usa en redacciones y distribución.',
 '<p>La IA ya se usa en redacciones para transcripción, resumen y análisis de audiencias…</p>',
 'Juan Pérez',
 '2025-08-09 19:34:15',
 'https://picsum.photos/1200/500?random=12',
 'https://www.youtube.com/watch?v=4-61rX6YbtA'),

('Eventos culturales del fin de semana',
 'eventos-culturales-fin-de-semana',
 'Panorama de conciertos, exposiciones y ferias.',
 '<p>Este fin de semana hay múltiples actividades culturales en distintas comunas…</p>',
 'Ana Rojas',
 '2025-08-08 19:34:15',
 'https://picsum.photos/1200/500?random=13',
 'https://www.youtube.com/watch?v=71JRZGdb-HI');
