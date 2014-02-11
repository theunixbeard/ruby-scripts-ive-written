# By Ben Gelsey August 2013

# 1. Get list of URLs for Freelancer threads & Who's hiring threads (Done by a rake task, so only need to open the correct file)
# 2. Iterate over each list, searching for keywords

require 'rubygems'
require 'bundler/setup' #Clears all gems from the load path EXCEPT those in the Gemfile
require 'mechanize'

def url_grabber freelancer = true
  if
end




=begin
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
=begin
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
=end


