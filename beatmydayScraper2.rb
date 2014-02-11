# By Ben Gelsey August 2012

# The general concept is as follows:
# We have the website: http://www.beatmyday.com/
# which in its blog posts about electronica music occasionally has links that look like this:
# <a href="http://soundcloud.com/therealarias/arias-someone-like-you/download" target="_blank">DOWNLOAD</a>
# We want to find all of these links (identified by DOWNLOAD as the text in the anchor link) and then
# actually download the contents
# Later pages in the blog look like this:
# http://www.beatmyday.com/category/free-downloads/page/2 to 
# http://www.beatmyday.com/category/free-downloads/page/38

# Facebook links are problematic...

require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get('http://www.beatmyday.com/category/free-downloads/page/2')
#page = agent.get('http://google.com/')

=begin
page.links.each do |link|
  puts link.text
end


agent.page.links_with(:text => 'DOWNLOAD').each do |link|
  #puts (link.methods - Object.instance_methods).sort
  puts link.text
  puts link.href
end
=end

links_to_dl = agent.page.links_with(:text => 'DOWNLOAD')


agent2 = Mechanize.new
agent2.pluggable_parser.default = Mechanize::Download

counter = 0
links_to_dl.each do |link|
  counter += 1
  puts link.text
  puts link.href
  agent2.get(link.href).save('song' + counter.to_s)
end



