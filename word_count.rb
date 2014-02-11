text = %{Have you ever read "Alice in Wonderland", my friend? Well, you should. This is
not completely related to this riddle, but I'm sure you would learn something
from it: at least, it contains many hints about adventures. :)
Which adventures am I speaking about?  Text adventures, the best ones. At least,
in my opinion: I swear, _THOSE_ were riddles.

For instance, a classic which you can find in textual adventures is the trick of
the bottle/the food: as in "Alice in Wonderland", you can grow bigger or become
smaller eating or drinking something and this can help you, for instance, if you
want to enter a door which is too small for you or if you want to reach a place
which is too high!
If you are interested in this kind of games I'll give you some hints. Search,
for instance, with the keywords "text adventures" or, if you are interested in
other kinds of "old" software, just try with "abandonwares" or "abandonwarez";
also, searching for "Infocom" and "Scott Adam" would not be a bad choice.

Why am I speaking about all this stuff? Well, as you should know (but probably
you do not ;) preparing a riddle is not easy. It requires time and effort, and
sometimes it even requires  more words than the ones you are used to write. All
starts with a simple idea: you want to take your readers somewhere, to a place
you've decided yet, to a conclusion that you think is obvious because you start 
from that and then "backtrack" from it to the first question (or questions, some
times). But often this kind of backtracking is not easy at all, my friend.

I'm afraid that this time the riddle will be far too easy. At least, easier than
I'd like (anyway I'll soon discover it, just by giving a look at the users' db):
don't worry anyway, next one will be harder.
What do you have to do to solve this riddle? Trivial, you just have to find
another password  I have hidden somewhere in this page. I found this riddle easy
because in my opinion there are many, many ways you can work to find the answer.

So, this time I'll try to avoid giving you hints: but I'm sure you will be able
to solve it anyway,my friend. The only things that you have here are this text, 
the picture you can see above it (at least I hope you can see it, i think it
could be helpful) and a detail of this picture, which is contained in a zip file
you can download just by clicking on the picture itself: study them, and the 
solution will be as easy as just connecting the clues you have found.}

words = text.split(/[^\w']+/)
word_map = {}

words.each do |w|
  w.downcase!
  if word_map[w]
    word_map[w] += 1
  else
    word_map[w] = 1
  end
end

word_map.to_a.map do |to_switch|
  to_switch.reverse!
end.sort!.each do |val|
  puts val[0].to_s + ", " + val[1].to_s
end
