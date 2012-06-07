module LiquidHelpers

  def parse_params(parameters)
    parameters.split('|').map(&:strip)
  end

  def hashToAttributes(hash)
    hash.inject([]) {|m, v| m << "#{v[0]}='#{v[1]}'" }.join(' ')
  end

  # Wrap input with a <div>
  def safe_wrap(input)
    "<div>#{input}</div>"
  end

  # This must be applied after the
  def unwrap(input)
    input.gsub /<div class='bogus-wrapper'><notextile>(.+?)<\/notextile><\/div>/m do
      $1
    end
  end

end
