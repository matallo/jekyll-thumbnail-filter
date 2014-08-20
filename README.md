# Jekyll Thumbnail Filter

**Related posts thumbnail filter for Jekyll.**

Jekyll Thumbnail Filter is a [custom liquid filter](http://jekyllrb.com/docs/plugins/#liquid-filters) for related posts thumbnails in the [Jekyll](http://jekyllrb.com/) static site generator.


## Installation

Copy `thumbnail_filter.rb` into your Jekyll `_plugins` folder.


## Usage

The filter will generate a link with the related post thumbnail as background image in the next order:

- `thumbnail_image` in the [Front Matter](http://jekyllrb.com/docs/frontmatter/)
- First image in the post content, hosted or external.
- Default background image of `.thumbnail` class in the CSS.

**Example:**

Inside the `site.related_post` loop.

```
{{ post.content | thumbnail_url: post.url, post.title }}
```

See the [exmaples](/examples) content for full examples and output.


## TODO

- Bundle the filter as a ruby gem
