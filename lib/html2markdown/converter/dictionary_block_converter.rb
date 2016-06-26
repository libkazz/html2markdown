module Html2Markdown
  class Converter
    class DictionaryBlockConverter < Base
      set_tags %w(dl)

      def convert
        element.text + "\n"
      end
    end
  end
end
