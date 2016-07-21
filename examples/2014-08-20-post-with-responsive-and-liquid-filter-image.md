---
layout: post
title: Post with responsive and liquid filter image
---

<picture>
  <source srcset="{{ '/img/example.png' | prepend: site.baseurl }} 1x, {{ '/img/example@2x.png' | prepend: site.baseurl }} 2x">
  <img src="{{ '/img/example.png' | prepend: site.baseurl }}" alt="Post with responsive and liquid filter image"/>
</picture>
