{extends 'index.tpl'}

{block 'content'}
    {foreach $events as $event}
        <article>
            <a href="https://www.facebook.com/{$event.id}">
                <h1>{$event.name}</h1>
                <p>{$event.start_time|date_format:'%d/%m/%Y'}</p>
            </a>
        </article>
    {/foreach}

    {if $pagination.next}
        <a href="{$pagination.next.url}">Next</a>
    {/if}
    {if $pagination.previous}
        <a href="{$pagination.previous.url}">Previous</a>
    {/if}
{/block}
