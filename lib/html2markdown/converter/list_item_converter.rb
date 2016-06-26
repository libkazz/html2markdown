module Html2Markdown
  class Converter
    class ListItemConverter < Base
      set_tags %w(li)

      def convert
        level = element.ancestors.count { |e| e.name == 'li' }
        style = case element.ancestors.first.name
                when 'ul' then '-'
                when 'ol' then '1.'
                end
        prefix = if element.parent.children.first == element
                   level > 0 ? "\n" + '  ' * level : ''
                 else
                   level > 0 ? '  ' * level : ''
                 end

        "#{prefix}#{style} #{element.text}\n"
      end
    end
  end
end
