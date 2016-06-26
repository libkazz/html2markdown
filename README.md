# Html2Markdown

An HTML-to-markdown conversion helper for Ruby
This is rewrite in ruby from PHP library (https://github.com/thephpleague/html-to-markdown).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html2markdown'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html2markdown

## Usage

```ruby
html = open(url).read
Html2Markdown.convert(html)
```
