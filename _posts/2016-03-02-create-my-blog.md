---
layout: post
title: 我的jekyll博客创建
tags:  [jekyll,博客]
categories: [jekyll]
author: intcpu
---

>jekyll模板大全: http://jekyllthemes.org/ 
>用了这个： http://jekyllthemes.org/themes/guovz-pithy/ 
>模板GITHUB地址：https://github.com/guovz/jekyll-pithy 

***

1. 下载rubyinstaller： http://rubyinstaller.org/downloads/
2. 安装 rubyinstaller-2.2.4-x64.exe
3. `gem update --system` 
> 报错： 
> Errno:: ECONNABORTED: An established connection was aborted by the software in your host machine. - SSL_connect (https://api.rubygems.org/specs.4.8.gz)

4. 连接一个代理
5. `gem update --system`

> Updating rubygems-update
> Fetching: rubygems-update-2.6.1.gem (100%)
> Successfully installed rubygems-update-2.6.1
> Parsing documentation for rubygems-update-2.6.1
> Installing ri documentation for rubygems-update-2.6.1
> Installing darkfish documentation for rubygems-update-2.6.1
> Done installing documentation for rubygems-update after 1 seconds
> Parsing documentation for rubygems-update-2.6.1
> Done installing documentation for rubygems-update after 0 seconds
> Installing RubyGems 2.6.1
> RubyGems 2.6.1 installed
> Parsing documentation for rubygems-2.6.1
> Installing ri documentation for rubygems-2.6.1
>  === 2.6.1 / 2016-02-28
>  ......
>  RubyGems system software updated
 
6. `gem install jekyll`
7. `gem install markdown`
8. `gem install kramdown`
10. `cd jekyll-pithy-master`

***

######问题1：
 `jekyll build --watch`
 
> Dependency Error: Yikes! It looks like you don't have jekyll-paginate or one of its dependencies installed. In order to use Jekyll as currently configured, you'll need to install this gem. The full error message from Ruby is: 'cannot load such file -- jekyll-paginate' If you run into trouble, you can find helpful resources at http://jekyllrb.com/help/!

######解决1：
`gem install jekyll-paginate`

>Fetching: jekyll-paginate-1.1.0.gem (100%)
> Successfully installed jekyll-paginate-1.1.0
> Parsing documentation for jekyll-paginate-1.1.0
> Installing ri documentation for jekyll-paginate-1.1.0
> Done installing documentation for jekyll-paginate after 0 seconds
> 1 gem installed

***

###### 问题2：
 `jekyll build --watch`
 
> Dependency Error: Yikes! It looks like you don't have D:/WEB/zhuanye.github.io/_plugins/i18n_filter.rb or one of its dependencies installed. In order to use Jekyll as currently configured, you'll need to install this gem. The full error message from Ruby is: 'cannot load such file -- i18n' If you run into trouble, you can find helpful resources at http://jekyllrb.com/help/!

######解决2：
`gem install i18n`

> Fetching: i18n-0.7.0.gem (100%)
> Successfully installed i18n-0.7.0
> Parsing documentation for i18n-0.7.0
> Installing ri documentation for i18n-0.7.0
> Done installing documentation for i18n after 1 seconds
> 1 gem installed

***

#######问题3：
> Deprecation: You are using 'enable_coderay', use syntax_highlighter: coderay in your configuration file.
> Deprecation: You are using 'kramdown.coderay' in your configuration, please use 'syntax_highlighter_opts' instead.
> Deprecation: You are using 'coderay_line_numbers'. Normalizing to line_numbers.
 
######解决3：
>_config.yml 这一段修改：

> highlighter: 'rouge'
> kramdown:
>   input:  GFM
>   syntax_highlighter: syntax_highlighter_opts
>   coderay:
>     line_numbers:  nil

***

#####关于本地查看：

`jekyll serve --trace`

>Configuration file: D:/WEB/zhuanye.github.io/_config.yml
>            Source: D:/WEB/zhuanye.github.io
>       Destination: D:/WEB/zhuanye.github.io/_site
> Incremental build: disabled. Enable with --incremental
>      Generating...
>                    done in 1.157 seconds.
> Please add the following to your Gemfile to avoid polling for changes:
>    gem 'wdm', '>= 0.1.0' if Gem.win_platform?
> Auto-regeneration: enabled for 'D:/WEB/zhuanye.github.io'
> Configuration file: D:/WEB/zhuanye.github.io/_config.yml
>    Server address: http://127.0.0.1:4000/
>  Server running... press ctrl-c to stop.

>>访问 http://127.0.0.1:4000/ 就能看到效果 ，ctrl-c终止命令