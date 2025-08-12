{extends file="layout.tpl"}

{block name="content"}
  <article>
    {if $article.hero_image_url}
      <img src="{$article.hero_image_url}" alt="{$article.title|escape}">
    {/if}

    <h1>{$article.title|escape}</h1>

    <div class="meta" style="margin-bottom:12px">
      Por {$article.author|escape} •
      <time datetime="{$article.published_at|escape}">{$article.published_label|escape}</time>
    </div>

    <div>
      {$article.body nofilter}
    </div>

    {if $article.embed_url}
      <div style="margin-top:20px;position:relative;padding-bottom:56.25%;height:0;overflow:hidden;border-radius:16px">
        <iframe src="{$article.embed_url|escape}" title="Video" frameborder="0" allowfullscreen
                style="position:absolute;top:0;left:0;width:100%;height:100%"></iframe>
      </div>
    {/if}
  </article>

  <p style="margin-top:18px">
    <a class="btn" href="{$base_url}/index.php">← Volver</a>
  </p>
{/block}


