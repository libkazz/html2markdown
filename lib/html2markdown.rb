require 'nokogiri'
require 'html2markdown/element'
require 'html2markdown/converter'
Dir[File.expand_path('../html2markdown/converter', __FILE__) + '/*'].each do |path|
  require "html2markdown/converter/#{File.basename(path)}"
end

module Html2Markdown
  VERSION = "0.1.0"
end
