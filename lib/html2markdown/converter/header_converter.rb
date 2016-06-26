module Html2Markdown
  class Converter
    class HeaderConverter < Base
      set_tags %w(h1 h2 h3 h4 h5 h6)

      def convert
        level = element.name.last.to_i
        "#{'#' * level} #{element.text}\n\n"
      end
    end
  end
end
