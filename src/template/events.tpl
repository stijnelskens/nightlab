{extends 'index.tpl'}

{block 'content'}

    <div class="section">
        <div class="container">
            <div class="grid spacer">
                <div class="grid__12 grid--bp-med__6">
                    {*{image src='img/svg/ampere.svg' var='image' push=true}*}
                    {*<div class="card__image">*}
                        {*<img src="{$image.src}" srcset="{$image.srcset}" alt="Ampere">*}
                    {*</div>*}
                    <span class="visuallyhidden"><h2>Ampere</h2></span>
                    {foreach $events as $event}
                        {if $event.place.name == 'Ampere'}
                            <div class="card card--event spacer">
                                <div class="card__aside">
                                    <a href="https://www.facebook.com/{$event.id}" target="_blank" class="card__linkerd">
                                        <div class="card__date">
                                            <div class="card__day">{$event.start_time|date_format:'%d'}</div>
                                            <div class="card__month">{$event.start_time|date_format:'%m'}</div>
                                        </div>
                                    </a>
                                </div>
                                <div class="card__main">
                                    <a href="https://www.facebook.com/{$event.id}" target="_blank" class="card__linkerd">
                                        <h2 class="card--event__title">{$event.name}</h2>
                                        <span class="card--event__location">{$event.place.name}</span>
                                    </a>
                                </div>
                            </div>
                        {/if}
                    {/foreach}
                </div>
                <div class="grid__12 grid--bp-med__6">
                    {*{image src='img/svg/fuse.svg' var='image' push=true}*}
                    {*<div class="card__image">*}
                        {*<img src="{$image.src}" srcset="{$image.srcset}" alt="Fuse">*}
                    {*</div>*}
                    <span class="visuallyhidden"><h2>Fuse</h2></span>
                    {foreach $events as $event}
                        {if $event.place.name == 'Fuse'}
                            <div class="card card--event spacer">
                                <div class="card__aside">
                                    <a href="https://www.facebook.com/{$event.id}" target="_blank" class="card__linkerd">
                                        <div class="card__date">
                                            <div class="card__day">{$event.start_time|date_format:'%d'}</div>
                                            <div class="card__month">{$event.start_time|date_format:'%m'}</div>
                                        </div>
                                    </a>
                                </div>
                                <div class="card__main">
                                    <a href="https://www.facebook.com/{$event.id}" target="_blank" class="card__linkerd">
                                        <h2 class="card--event__title">{$event.name}</h2>
                                        <span class="card--event__location">{$event.place.name}</span>
                                    </a>
                                </div>
                            </div>
                        {/if}
                    {/foreach}
                </div>
            </div>
            <div class="grid spacer">
                <div class="grid__12 grid--bp-med__6">
                    {*{image src='img/svg/kompass.svg' var='image' push=true}*}
                    {*<div class="card__image">*}
                        {*<img src="{$image.src}" srcset="{$image.srcset}" alt="Fuse">*}
                    {*</div>*}
                    <span class="visuallyhidden"><h2>Kompass</h2></span>
                    {foreach $events as $event}
                        {if $event.place.name == 'Kompass'}
                            <div class="card card--event spacer">
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
                        {/if}
                    {/foreach}
                </div>
                <div class="grid__12 grid--bp-med__6">
                    <div class="text--center spacer"><h2>Labyrinth Club</h2></div>
                    {foreach $events as $event}
                        {if $event.place.name == 'Labyrinth Club'}
                            <div class="card card--event spacer">
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
                        {/if}
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
