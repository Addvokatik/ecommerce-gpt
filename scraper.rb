# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

url = 'https://rozetka.com.ua'

options = {
  'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'
}

doc = Nokogiri::HTML(URI.open(url, options))

selector = 'h1'

doc.css(selector).each do |element|
  puts element.content
end
