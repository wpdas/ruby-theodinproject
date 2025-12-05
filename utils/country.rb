module Utils
  class Country
    attr_accessor :name

    def initialize(name = "Undefined")
      @name = name
    end

    def set_name(name)
      @name = name
    end

    def get_name
      @name
    end
    
  end
end