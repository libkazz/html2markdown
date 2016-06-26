lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html2markdown'

Gem::Specification.new do |spec|
  spec.name          = 'html2markdown'
  spec.version       = Html2Markdown::VERSION
  spec.authors       = ['Kazuaki Takemoto']
  spec.email         = ['libkazz@gmail.com']
  spec.summary       = %q{An HTML-to-markdown conversion helper for Ruby.}
  spec.files         = `git ls-files -z`.split('\x0').reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri', '~> 1.6.8'
  spec.add_development_dependency 'rspec'
end
