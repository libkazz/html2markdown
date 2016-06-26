module Html2Markdown
  module Element
    def block?
      if %w(blockquote body code div h1 h2 h3 h4 h5 h6 hr html li p ol ul).include?(name)
        true
      else
        false
      end
    end
  end

  Nokogiri::XML::Element.prepend(Element)
  Nokogiri::XML::Text.prepend(Element)
end

