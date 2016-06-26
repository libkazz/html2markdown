module Html2Markdown
  class Converter
    class DictionaryTermConverter < Base
      set_tags %w(dt)

      def convert
        element.text + "\n"
      end
    end
  end
end
