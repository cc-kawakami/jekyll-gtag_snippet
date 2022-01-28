require "jekyll"
require "jekyll-gtag_snippet/version"
require "gtag_snippet"

class JekyllGtagSnippet < Liquid::Tag
  include GtagSnippet::Helper

  def initialize(tag_name, measurement_id = nil, tokens)
    super
    @measurement_id = measurement_id
  end

  def render(context)
    gtag_snippet(measurement_id: @measurement_id)
  end

  Liquid::Template.register_tag "gtag_snippet", self
end
