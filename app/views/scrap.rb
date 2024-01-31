require 'nokogiri'
require 'open-uri'

url = 'http://prom.ua' # замініть на URL вашого сайту
doc = Nokogiri::HTML(URI.open(url))

# Використовуємо CSS-селектор для отримання заголовків H1
headers = doc.css('h1')
headers.each do |header|
  puts header.text
end

# Використовуємо XPath для отримання всіх посилань
links = doc.xpath('//a')
links.each do |link|
  puts link['href']
end

images = doc.xpath('//img')
images.each do |img|
  puts img['src']
end