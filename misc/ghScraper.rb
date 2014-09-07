require 'nokogiri'
require 'open-uri'
require 'awesome_print'

# adapted from in-class nokogiri assignment 

# term = ARGV[0]
url = open("https://github.com/lisavogtsf/BeginnerResources-calendar").read
# url = open("hn.html").read

page = Nokogiri::HTML(url)
# puts url
results = []

results = page.css(".js-directory-link").map do |link|
    # {filename: link.text}
    link.text
end

# prints a bunch of objects--not in an array?
puts results

ap results	