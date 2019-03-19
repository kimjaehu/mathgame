class Turn
  attr_reader :questioner, :answerer

  def initialize(questioner, answerer)
    @questioner = questioner
    @answerer = answerer
  end
end