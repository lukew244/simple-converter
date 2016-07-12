
class JsonFormatter

  def initialize(string)
    @string = string
  end

  def format
    "{result: #{@string}}"
  end

end
