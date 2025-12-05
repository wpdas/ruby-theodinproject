module Utils
  module Bug
    class Job
      attr_accessor :name

      def initialize(name = "Undefined")
        @name = name
      end

      def perform
        puts "Performing job: #{@name}"
      end

      # Auto create a new job as a software developer
      def self.new_as_developer()
        new("Software Developer")
      end

      # Auto create a new job as a software engineer
      def self.new_as_software_engineer()
        new("Software Engineer")
      end

      # Auto create a new job as a software architect
      def self.new_as_software_architect()
        new("Software Architect")
      end
    end
  end
end