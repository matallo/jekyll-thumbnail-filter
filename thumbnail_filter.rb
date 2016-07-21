# Title: Jekyll Thumbnail Filter
# Authors: Carlos Matallín : @matallo
#
# Description: Related posts thumbnail filter for Jekyll.
#
# Download: https://github.com/matallo/jekyll-thumbnail-filter
# Documentation: https://github.com/matallo/jekyll-thumbnail-filter/blob/master/README.md
# Issues: https://github.com/matallo/jekyll-thumbnail-filter/issues
#
# Syntax:  {{ post.content | thumbnail_url: post.url, post.title }}
#
# See the documentation for usage instructions.

module Jekyll
  module ThumbnailFilter
    def thumbnail_url(input, post_url, post_title)
      m = input.match(/(src=("|')|\()((http|https):\/\/\S+\.(?:gif|jpeg|jpg|png|webp|svg)|.*(\/img\/\S+?\.(?:gif|jpeg|jpg|png|webp|svg)))/)
      baseurl = @context.registers[:site].config['baseurl']

      if m.nil?
        %|<a href="#{baseurl}#{post_url}" alt="#{post_title}" class="thumbnail"></a>|
      else
        %|<a href="#{baseurl}#{post_url}" style="background-image: url(#{m[4] ? m[3] : baseurl + m[5]})" alt="#{post_title}" class="thumbnail"></a>|
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::ThumbnailFilter)
