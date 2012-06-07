require "#{File.dirname(__FILE__)}/lib/liquid_helpers"

module Jekyll
  class PostImageURLTag < Liquid::Tag
    include ::LiquidHelpers

    def initialize(tag_name, parameters, tokens)
      super
      @image, @alt, @klass = parse_params(parameters)
    end

    def render(context)
      file_url = context.environments.first["page"]["url"]
      attributes = [
        file_url.gsub('.html', ''),
        @image.strip,
        @alt.strip,
        (hashToAttributes({'class' => @klass}) if @klass)
      ]
      '<img src="/images/content/posts/%s/%s" alt="%s" %s />' % attributes
    end

  end
end

Liquid::Template.register_tag('post_image', Jekyll::PostImageURLTag)
