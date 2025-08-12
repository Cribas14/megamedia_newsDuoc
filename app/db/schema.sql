CREATE DATABASE IF NOT EXISTS megamedia_news
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE megamedia_news;

CREATE TABLE IF NOT EXISTS articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  slug VARCHAR(160) NOT NULL UNIQUE,
  title VARCHAR(200) NOT NULL,
  author VARCHAR(120) NOT NULL,
  body MEDIUMTEXT NOT NULL,
  hero_image_url VARCHAR(500) NULL,
  embed_url VARCHAR(500) NULL,
  published_at DATETIME NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO articles (slug, title, author, body, hero_image_url, embed_url, published_at) VALUES
('lanzamiento-plataforma-streaming',
 'Lanzamiento de la nueva plataforma de streaming',
 'María Torres',
 '<p>Una nueva plataforma llega al mercado con contenido original...</p>',
 'https://picsum.photos/1200/500?random=11',
 'https://www.youtube.com/embed/qpJCalULQBg',
 '2025-08-10 19:34:00'),

('informe-especial-ia-medios',
 'Informe especial: impacto de la IA en los medios',
 'Juan Pérez',
 '<p>Cómo la inteligencia artificial está transformando la producción y distribución de contenidos...</p>',
 'https://picsum.photos/1200/500?random=12',
 'https://www.youtube.com/embed/4-61rX6YbtA',
 '2025-08-09 10:24:00'),

('acuerdo-colaboracion-tecnologica',
 'Acuerdo de colaboración tecnológica',
 'Agencia Megamedia',
 '<p>La compañía firmó un acuerdo estratégico para fortalecer su oferta digital...</p>',
 'https://picsum.photos/1200/500?random=13',
 'https://www.youtube.com/embed/71JRZGdb-HI',
 '2025-08-08 12:30:00');
