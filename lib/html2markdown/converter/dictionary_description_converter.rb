module Html2Markdown
  class Converter
    class DictionaryDescriptionConverter < Base
      set_tags %w(dd)

      def convert
        ': ' + element.text + "\n"
      end
    end
  end
end
