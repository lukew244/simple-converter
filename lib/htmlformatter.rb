
class HtmlFormatter

  def initialize(string)
    @string = string
  end

  def format
    "<html>#{@string}</html>"
  end

end
