

File.open 'bom.txt' do |fread|
  File.open 'bom.csv', 'w' do |fwrite|

    fread.each_line do |l|
      l.gsub!(',', '&')
      #puts l.gsub(':', ',') #debug
      fwrite.write(l.gsub(':', ','))
    end
  end
end
