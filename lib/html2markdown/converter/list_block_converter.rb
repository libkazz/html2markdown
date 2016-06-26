module Html2Markdown
  class Converter
    class ListBlockConverter < Base
      set_tags %w(ul ol)

      def convert
        element.text + "\n"
      end
    end
  end
end
