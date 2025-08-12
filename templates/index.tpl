{extends file="layout.tpl"}

{block name="content"}
  <section>
    {if $articles|@count > 0}
      {foreach $articles as $a}
        <article style="border:1px solid #ddd;border-radius:10px;padding:12px;margin:10px 0;">
          {if $a.hero_image_url}
            <img src="{$a.hero_image_url}" alt="{$a.title|escape}" style="width:100%;max-height:220px;object-fit:cover;border-radius:10px;">
          {/if}
          <h2 style="margin:10px 0 4px;">{$a.title|escape}</h2>
          <div style="color:#666;font-size:.9rem;margin-bottom:6px;">
            Por {$a.author|escape} • 
            <time datetime="{$a.published_at|escape}">{$a.published_label|escape}</time>
          </div>
          <p>{$a.summary|escape}</p>
          <p><a href="{$base_url}/article.php?slug={$a.slug|escape}">Leer más →</a></p>
        </article>
      {/foreach}
    {else}
      <p>No hay artículos disponibles.</p>
    {/if}
  </section>
{/block}
