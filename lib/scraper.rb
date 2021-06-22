require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
# doc.search(".headline-26OIBN")
courses =  doc.search(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]
puts courses
# courses.map do |course|
#     puts course.text.strip
# end