class Joke

  attr_reader :attributes

  def initialize(attributes)
    @attributes = attributes
  end

  def id
    @attributes[:id]
  end

  def question
    @attributes[:question]
  end

  def answer
    @attributes[:answer]
  end

end
