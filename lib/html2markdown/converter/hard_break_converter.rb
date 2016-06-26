module Html2Markdown
  class Converter
    class HardBreakConverter < Base
      set_tags %w(br)

      def convert
        "  \n"
      end
    end
  end
end
