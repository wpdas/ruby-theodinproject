require_relative "../utils/speak"
require_relative "../utils/age"

class GoodDog < Utils::Age
  # include Utils::Speak
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak(text)
    Utils::Speak.speak(text)
  end
end