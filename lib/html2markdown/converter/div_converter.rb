module Html2Markdown
  class Converter
    class DivConverter < Base
      set_tags %w(body div section figure)

      def convert
        return '' if element.text.empty?

        "#{element.text}\n\n"
      end
    end
  end
end
