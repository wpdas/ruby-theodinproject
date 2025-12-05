module Utils
  class Age
    def initialize(birthday)
      @birthday = birthday
    end

    def calculate_age
      Time.now.year - @birthday.year
    end
  end
end