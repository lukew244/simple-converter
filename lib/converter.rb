require_relative 'textformatter'
require_relative 'htmlformatter'
require_relative 'jsonformatter'

class Converter
  attr_reader :formats
  FORMATTERS = {text: TextFormatter, html: HtmlFormatter, json: JsonFormatter}

  def initialize(string)
    @string = string
  end

  def convert_to(format)
    fail 'Unrecognised type' unless FORMATTERS.has_key?(format)
    FORMATTERS[format].new(@string).format
  end

end
