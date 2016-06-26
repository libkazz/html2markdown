require 'nokogiri'
require 'html2markdown/element'
require 'html2markdown/converter'
Dir['./lib/html2markdown/converter/*'].each do |path|
  p path
  require "html2markdown/converter/#{File.basename(path)}"
end

module Html2Markdown
  VERSION = "0.1.0"
end
