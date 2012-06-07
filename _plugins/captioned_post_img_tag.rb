# Example:
#
# {% captioned_post_image This is the caption | some-class %}
#   {% post_image foo.png | This is the alt text | some-other-class %}
# {% endcaptioned_post_image %}
#
# Output:
#
# <figure class='some-class'>
#    <img class="some-other-class" src="http://site.com/images/foo.png" alt="This is the alt text" />
#    <figcaption>This is the caption</figcaption>
# </figure>
#

require "#{File.dirname(__FILE__)}/lib/liquid_helpers"

module Jekyll
  class CaptionedPostImageTag < Liquid::Block
    include ::LiquidHelpers

    def initialize(tag_name, parameters, tokens)
      @caption, @class = parse_params(parameters)
      super
    end

    def render(context)
      output = super
      html = render_figure(@klass) do
        """
        #{output}
        #{render_caption(@caption)}
        """
      end
      safe_wrap(html)
    end

  private

    def render_figure(klass, &block)
      """
      \n<figure #{(hashToAttributes({'class' => klass}) if klass)}>
      #{yield}
      \n</figure>
      """
    end

    def render_caption(text)
      text ? "<figcaption>#{text}</figcaption>": ''
    end

  end
end

Liquid::Template.register_tag('captioned_post_image', Jekyll::CaptionedPostImageTag)
