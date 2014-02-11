require 'java' #Current best way
#include Java # INTERMEDIATE, NOW NOT RECOMMENDED
#include 'java' # DOESNT WORK

require '/Users/primary/.m2/repository/com/google/bitcoinj/0.8/bitcoinj-0.8.jar' # Lets us java_import classes from bitcoinj

#include_class "java.util.TreeSet" #include_class is DEPRECATED
java_import "java.util.TreeSet"

# com.google.bitcoin.core.NetworkParameters
params = Java::ComGoogleBitcoinCore::NetworkParameters.testNet()

puts "Hello from ruby"
set = TreeSet.new
set.add "foo"
set.add "Bar"
set.add "baz"
set.each { |v| puts "value: #{v}" }
