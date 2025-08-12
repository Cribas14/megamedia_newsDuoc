{extends file="layout.tpl"}

{block name="content"}
  <h2 style="margin:0 0 12px">Últimas noticias</h2>

  <section class="grid">
    {foreach $articles as $a}
      <article class="card">
        {if $a.hero_image_url}
          <a href="{$base_url}/article.php?slug={$a.slug|escape}">
            <img src="{$a.hero_image_url}" alt="{$a.title|escape}" style="width:100%;max-height:180px;object-fit:cover;border-radius:12px">
          </a>
        {/if}

        <h3 style="margin:12px 0 6px">
          <a href="{$base_url}/article.php?slug={$a.slug|escape}" style="color:inherit;text-decoration:none">
            {$a.title|escape}
          </a>
        </h3>

        <div class="meta">
          Por {$a.author|escape} • {$a.published_label|escape}
        </div>

        <p style="margin:10px 0 12px">
          {$a.excerpt|default:'Continúa leyendo esta nota…'|escape}
        </p>

        <a class="btn" href="{$base_url}/article.php?slug={$a.slug|escape}">Leer más →</a>
      </article>
    {/foreach}
  </section>
{/block}

