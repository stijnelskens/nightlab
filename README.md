[![Build Status](https://scrutinizer-ci.com/g/brendt/stitcher/badges/build.png?b=master)](https://scrutinizer-ci.com/g/brendt/stitcher/build-status/master) [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/brendt/stitcher/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/brendt/stitcher/?branch=master)

# Stitcher

High performance, static websites for PHP developers.

```bash
composer create-project pageon/stitcher
```

### Why Stitcher?

Stitcher differs from many other static site generator in two areas. First of all: **performance is key**. Stitcher is built from its core for high performance websites. All tools available to you put performance on the first place. Secondly, it doesn't try to add extra syntax to existing formats. Stitcher provides a robust set of tools **for developers** to build with, and not a lot of hacks so everything fits in one file.
 
Also important to note, included with Stitcher:

- Automatic image optimization, as easy as `image.srcset`
- HTTP/2 server push support
- Markdown, YAML and JSON
- Twig and Smarty support
- Data set overviews and details; pagination, sorting and filtering
- Built-in SASS support
- JavaScript and CSS minification
- Built-in SEO and meta tag optimizations

A quick look at Stitcher:

```yaml
# site.yml

/blog:
    template: blog
    variables:
        posts: data/blog.yml
    
/blog/{id}:
    template: blog.post
    variables:
        post: data/blog.yml
    adapters:
        collection:
            variable: post
            field: id
```

```yaml
# data/blog.yml

hello_world:
    date: 2017-03-10
    highlight: false
    title: Hello world
    content: blog/hello.md
    image: hello_world.jpg

foo_bar:
    date: 2017-03-14
    highlight: true
    title: Foo Bar
    content: blog/far_bar.md
    image: foo_bar.jpg 
```

```html
<!-- blog.post.html --> 

{% extends 'index.html' %}

{% block content %}
    <article>
        <h1>{{ blog.title }}</h1>
        
       <img src="{{ blog.image.src }}" 
            srcset="{{ blog.image.srcset }}" 
            sizes="{{ blog.image.sizes }}" alt="{{ blog.image.alt }}"/>
        
        {{ blog.content }}
    </article>
{% endblock %}
```


You can read more about it on [the Stitcher website](http://stitcher.pageon.be).

### Upcoming features

Stitcher is in alpha development, so new features are still being made. Here's a list of what's to come before a stable v1 release:

- Plugin support
- Theme support

Also, we're already thinking about the farther future:

- Localisation
- URL generation
- CLI Configuration and setup
- site:deploy command
- Frontend Filters
- Form support with Lumen/Slim
