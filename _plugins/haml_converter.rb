module Jekyll
  require 'haml'
  require 'typogruby'
  class HamlConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /haml/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      engine = Haml::Engine.new(content)
      content = engine.render
      Typogruby.improve(content)
    end
  end
end
