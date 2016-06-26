module Html2Markdown
  class Converter
    class LinkConverter < Base
      set_tags %w(a)

      def convert
        if element['title']
          "[#{element.text}](#{element['href']} \"#{element['title']}\")"
        else
          "[#{element.text}](#{element['href']})"
        end
      end
    end
  end
end
