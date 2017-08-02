<html>
    <head>
        {block 'head'}
            <title>Nightlab.be</title>
            {meta}
            {css src="css/main.min.css"}
        {/block}
        <script type="text/javascript" src="/js/modernizr.min.js"></script>
        <!--[if lt IE 9]>
          <script type="text/javascript" src="/js/html5shiv.min.js"></script>
        <![endif]-->
        {* <!--[if gt IE 9]><!--><link rel="stylesheet" href="/css/main.min.css"><!--<![endif]--> *}
        <!--[if lt IE 9]>
            <script type="text/javascript" src="/js/selectivizr.min.js"></script>
        <![endif]-->
        <!--[if lte IE 9]>
            <link rel="stylesheet" href="/css/main-legacy.min.css">
            <script type="text/javascript" src="/js/polyfill.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="page-wrap">
            {block 'body'}
                {block 'header'}
                    <header class="page-header">
                        <nav class="wrapper">
                        </nav>
                    </header>
                {/block}

                <div class="page-main" role='main'>
                    {block 'content'}{/block}
                </div>

                <footer class="page-footer" role="contentinfo">
                    {block 'footer'}{/block}
                </footer>

                {block 'scripts'}{/block}
            {/block}
        </div>
    </body>
</html>
