module Html2Markdown
  class Converter
    class ImageConverter < Base
      set_tags %w(img)

      def convert
        "![#{element['alt']}](#{element['src']})"
      end
    end
  end
end
