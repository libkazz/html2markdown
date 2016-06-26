module Html2Markdown
  class Converter
    class << self
      def convert(html)
        new(html).convert.to_s.gsub(/\n\n+/, "\n\n")
      end

      def of(element)
        (constants - [:Base]).each do |c|
          converter = self.const_get(c)
          return converter.new(element) if converter.support?(element.name)
        end

        Base.new(element)
      end
    end

    def initialize(html)
      @html = html
      @document = Nokogiri::HTML.parse(html)
    end

    def convert
      convert_children(@document.at('body'))
    end

    def remove_tags
      %w(path svg polyline polygon nav header footer meta table tbody tr th td item_feature #cdata-section script comment)
    end

    def convert_children(element)
      element.children.each { |child| convert_children(child) }

      markdown = if remove_tags.include?(element.name)
                   ''
                 else
                   convert_to_markdown(element)
                 end
      element.replace(markdown)
    end

    def convert_to_markdown(element)
      Converter.of(element).convert
    end
  end
end
