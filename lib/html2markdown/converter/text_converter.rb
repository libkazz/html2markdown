module Html2Markdown
  class Converter
    class TextConverter < Base
      set_tags %w(text)

      def convert
        element.text.strip.gsub(/[\t\n\r]/, '')
      end
    end
  end
end
