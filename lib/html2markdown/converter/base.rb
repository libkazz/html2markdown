module Html2Markdown
  class Converter
    class Base
      class << self
        def set_tags(tags)
          @tags = tags
        end

        def support?(tag)
          @tags.include?(tag)
        end
      end

      attr_reader :element

      def initialize(element)
        @element = element
      end

      def convert
        raise NotImplementedError.new("#{element.name} is not Implemented")
      end
    end
  end
end
