class String
  def shuffle
    self.split('').shuffle.join
  end
end
puts "foobar".shuffle

person1 = { first: 'ben1', last: 'gelsey1' }
person2 = { first: 'ben2', last: 'gelsey2' }
person3 = { first: 'ben3', last: 'gelsey3' }
 
params = { father: person1, mother: person2, child: person3 }
p params[:father][:first]
