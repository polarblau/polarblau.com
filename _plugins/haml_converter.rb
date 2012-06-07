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
      begin
        engine = Haml::Engine.new(content)
        content = engine.render
        Typogruby.improve(content)
      rescue => e
        puts "HAML Exception (#{e.haml_line}): #{e.message}"
      end
    end
  end
end
