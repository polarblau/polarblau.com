#
# Methods placed in this module can be used inside of any view.
# View helpers allow you to encapsalate complex logic and keep your
# views pristine.
#
module ViewHelpers
  
  def html_tag(attrs = {}, &block)
    attrs.symbolize_keys!
    haml_concat '<!--[if lt IE 7]><html class="ie6 no-js" lang="en"><![endif]-->'
    haml_concat '<!--[if IE 7]><html class="ie7 no-js" lang="en"><![endif]-->'
    haml_concat '<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->'
    haml_concat '<!--[if gt IE 8]><!-->'
    haml_tag :html, { :class => 'no-js', :lang => 'en' }.merge(attrs) do
      haml_concat '<!--<![endif]-->'
      block.call
    end
  end
  
end