module Html2Markdown
  class Converter
    class SpanConverter < Base
      set_tags %w(span)

      def convert
        element.text
      end
    end
  end
end
