<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>{$page_title|default:'Megamedia Noticias'}</title>

  <!-- Estilos -->
  <link rel="stylesheet" href="{$base_url}/assets/assets/styles.css?v=1">

  {if isset($ga4_id) && $ga4_id ne ''}
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={$ga4_id}"></script>
    {literal}
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      // Configuración básica GA4
      gtag('config', '{/literal}{$ga4_id}{literal}');
    </script>
    {/literal}
  {/if}
</head>

<body>
  <!-- Header mejorado -->
  <header class="site-header">
    <div class="inner">
      <div class="brand">
        <span class="dot"></span>
        <a href="{$base_url}/index.php" style="color:inherit;text-decoration:none;">Megamedia Noticias</a>
      </div>
      <nav class="nav">
        <a href="{$base_url}/index.php">Inicio</a>
        <a href="#">Actualidad</a>
        <a href="#">Deportes</a>
      </nav>
    </div>
  </header>

  <!-- Contenido -->
  <main class="container">
    {block name="content"}{/block}
  </main>

  <!-- Footer -->
  <footer class="site-footer">
    © {$current_year} Megamedia NewsDuoc
  </footer>
</body>
</html>




