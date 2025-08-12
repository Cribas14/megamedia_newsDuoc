# Megamedia News Duoc

Aplicativo web de noticias en **PHP nativo + Smarty + MySQL**, con **Google Analytics 4 (GA4)** integrado.  
Incluye 3 artículos de ejemplo y **video embebido de YouTube** en cada nota.

## Requisitos
- XAMPP (Apache, PHP 8.x, MySQL) en Windows
- Navegador (Chrome/Edge/Brave)

## Instalación
1. **Base de datos**  
   - Importar `db/schema.sql` en phpMyAdmin.  
   - Crea la BD `megamedia_newsduoc` y la tabla `articles` con 3 filas.
2. **Configuración**  
   - Copiar `app/config.example.php` a `app/config.php`.  
   - Editar credenciales de MySQL, `base_url` y `ga4_id` (ID de tu propiedad GA4).
3. **Ubicación del proyecto**  
   - Colocar la carpeta en `C:\xampp\htdocs\megamedia_newsDuoc`.
4. **Levantar**  
   - Iniciar **Apache** y **MySQL** en XAMPP.  
   - Abrir `http://localhost/megamedia_newsDuoc/`.

## GA4
- Script en `templates/layout.tpl` usando la variable `ga4_id`.
- **Medición mejorada** activada: `page_view`, `scroll`, `clicks de salida`, `video engagement`.
- Verificación: GA4 → **Informes** → **Tiempo real** (o **DebugView**).

## Funcionalidades
- Listado de artículos y detalle.
- Imagen principal y **YouTube** embebido por artículo.
- Plantillas con **Smarty**.


## Notas
- Este repositorio **no** incluye `app/config.php` ni `templates_c/` (ignorados por .gitignore).
- Cada artículo incluye `youtube_url`; el template lo incrusta automáticamente.
- Probado en Windows (XAMPP). Si el navegador bloquea GA4, usar Edge en modo InPrivate.

