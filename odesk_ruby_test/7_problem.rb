require 'nokogiri'
doc = Nokogiri::XML(ARGF.read)

class StudentNode
  include Comparable

  attr_accessor :name
  attr_accessor :num

  def initialize(num, name)
    @num = num
    @name = name
  end
  def <=>(another)
    if (num > another.num)
      return 1
    elsif (num == another.num)
      return 0
    else
      return -1
    end
  end
end

final_arr = []

#puts doc.root
doc.xpath("//student").each do |node|
  stu_id = node["studentid"]
  stu_name = node.text
  final_arr << StudentNode.new(stu_id, stu_name)
end
  
final_arr.sort!
final_arr.each do |n|
  puts n.name
end


