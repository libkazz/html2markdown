module Html2Markdown
  class Converter
    class EmphasisConverter < Base
      set_tags %w(em i strong b)

      def convert
        style = %w(em i).include?(element.name) ? '*' : '**'

        "#{style}#{element.text}#{style}"
      end
    end
  end
end
