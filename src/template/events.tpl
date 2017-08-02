{extends 'index.tpl'}

{block 'content'}

    <div class="section">
        <div class="container">
            <div class="grid">
                <div class="grid__12 grid--bp-med__6">
                    {foreach $events as $event}
                        <div class="card card--event">
                            <div class="card__aside">
                                <a href="https://www.facebook.com/{$event.id}" target="_blank">
                                    <div class="card__date">
                                        <div class="card__day">{$event.start_time|date_format:'%d'}</div>
                                        <div class="card__month">{$event.start_time|date_format:'%m'}</div>
                                    </div>
                                </a>
                            </div>
                            <div class="card__main">
                                <a href="https://www.facebook.com/{$event.id}" target="_blank">
                                    <h2 class="card--event__title">{$event.name}</h2>
                                    <span class="card--event__location">{$event.place.name}</span>
                                </a>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>

    {if $pagination.next}
        <a href="{$pagination.next.url}">Next</a>
    {/if}
    {if $pagination.previous}
        <a href="{$pagination.previous.url}">Previous</a>
    {/if}
{/block}
