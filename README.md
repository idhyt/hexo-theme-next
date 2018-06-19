## Mala Theme

[black theme](https://github.com/idhyt/hexo-theme-next/tree/magiclamp) is ongoing...

![blog-theme-mala](http://7xi9s3.com1.z0.glb.clouddn.com/blog-theme-magiclamp-black.png)


## Usage

1.cd `/themes`

2.git clone -b magiclamp git@github.com:idhyt/hexo-theme-next.git

3.mv hexo-theme-next magiclamp

4.modify `_config.yml` => `theme: magiclamp`

5.modify `themes/magiclamp/_config.yml` => `scheme: Mala`


## Update(20170501)

1.删除多说相关所有功能，只保留disqus

2.将主题相关配置信息提取出来放在根目录配置文件`_config.yml`中，以后主题更新不会影响到配置信息。

3.blog根目录(非主题)配置文件`_config.yml`,将`xxx`更换自己的配置。

```
# Hexo Configuration
## Docs: http://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# Site
title: xxx's blog
subtitle: 云淡风轻
description: 水中月.镜中花.浮华一片苍凉..
author: xxx
language: en # zh-Hans
timezone:

# URL
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://blog.idhyt.com
root: /
permalink: :year/:month/:day/:title/
permalink_defaults:

# Directory
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# Writing
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: true
  tab_replace:

# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# Archives 默认值为2，这里都修改为1，相应页面就只会列出标题，而非全文
## 2: Enable pagination
## 1: Disable pagination
## 0: Fully Disable
archive: 1
category: 1
tag: 1

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD
time_format: HH:mm:ss

# Pagination
## Set per_page to 0 to disable pagination
per_page: 7
pagination_dir: page

# # Extensions
# ## Plugins: http://hexo.io/plugins/
# plugins:
# - hexo-generator-feed
# - hexo-generator-sitemap
# Feed Atom
feed:
  type: atom
  path: atom.xml
  limit: 20
# sitemap
sitemap:
  path: sitemap.xml

## Themes: http://hexo.io/themes/
theme: magiclamp

# Deployment
## Docs: http://hexo.io/docs/deployment.html
deploy:
  type: git
  repository: 
    github: https://github.com/xxx/xxx.github.io.git,master
    coding: git@git.coding.net:xxx/xxx,coding-pages

# =============================================================================
# Begin Mala Theme configuration
# =============================================================================

# Some suprise plugs
suprise:
  # 踢皮球动画开关
  ball: true
  # 主题点亮开关
  assist: true

# 打赏功能，需要将图片链接更换为自己的
donate:
  enable: true
  text: 仅仅是一个功能
  wechat: http://o7keinrz4.bkt.clouddn.com/wechat.jpg
  alipay: http://o7keinrz4.bkt.clouddn.com/alipay.jpg

# 不蒜子统计
busuanzi: false

# share server
# JiaThis share
jiathis: false

# baidu share
baidu_share: true

# DISQUS 帐号 （如果已经设置 多说 帐号，此选项将被跳过）
disqus_shortname: xxx # your-disqus-shortname


# 社交链接，将在侧栏中显示
social:
  GitHub: http://github.com/xxx
  Twitter: https://twitter.com/xxx
  Weibo: http://weibo.com/xxx
  # DouBan: your-douban-url
  ZhiHu: http://www.zhihu.com/people/xxx
  # 等等

# 友情链接
links_title: Links
links:
  About: http://blog.idhyt.com/about/

# Creative Commons 4.0 International License.
# http://creativecommons.org/
# Available: by | by-nc | by-nc-nd | by-nc-sa | by-nd | by-sa | zero
creative_commons: by-nc-sa


# Google 站长工具验证，请选择 `HTML Meta` 验证方式
# See: https://www.google.com/webmasters/
google_site_verification: xxx


# Google 分析 ID
google_analytics: xxx


# 百度统计 ID，此 ID 是百度统计提供脚本中 hm.js? 后面那串字符，非百度统计帐号
baidu_analytics: xxx

# swiftype search
swiftype_key: xxx

# 站点起始时间
since: 2011

# =============================================================================
# End Mala Theme configuration
# =============================================================================

```