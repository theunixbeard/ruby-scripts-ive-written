#!/usr/bin/ruby

# The general concept is as follows:
# We have the website: http://www.beatmyday.com/
# which in its blog posts about electronica music occasionally has links that look like this:
# <a href="http://soundcloud.com/therealarias/arias-someone-like-you/download" target="_blank">DOWNLOAD</a>
# We want to find all of these links (identified by DOWNLOAD as the text in the anchor link) and then
# actually download the contents
# Later pages in the blog look like this:
# http://www.beatmyday.com/category/free-downloads/page/2 to 
# http://www.beatmyday.com/category/free-downloads/page/38

require 'wombat'

data = Wombat.crawl do
  base_url "http://www.beatmyday.com"
  path "/category/free-downloads/page/1"
  
  first_download_link "css=a", :text

=begin
  headline "xpath=//h1"

  what_is "css=.column.secondary p", :html

  explore "xpath=//ul/li[2]/a" do |e|
    e.gsub(/Explore/, "LOVE")
  end

  benefits do
    first_benefit "css=.column.leftmost h3"
    second_benefir "css=.column.leftmid h3"
    third_benefit "css=.column.rightmid h3"
    fourth_benefit "css=.column.rightmost h3"
  end
=end
end

puts data


