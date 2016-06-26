module Html2Markdown
  class Converter
    class ParagraphConverter < Base
      set_tags %w(p)

      def convert
        return '' if element.text.empty?

        "#{element.text}\n\n"
      end
    end
  end
end
