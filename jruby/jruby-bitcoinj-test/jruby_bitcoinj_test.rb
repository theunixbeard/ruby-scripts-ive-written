#require 'rubygems'
#require 'bundler/setup' #Clears all gems from the load path EXCEPT those in the Gemfile
#require 'java'
include Java

require '/Users/primary/.m2/repository/com/google/bitcoinj/0.8/bitcoinj-0.8.jar'
#java_import com.google.bitcoin.core.NetworkParameters

=begin
module JavaTest
  import 'com.google.bitcoin'
  import 'com.google.common.util'
  import 'java.io'
  import 'java.math'
  import 'com.google.common.base'
end
=end

#w = JavaTest::Wallet.new
#params = JavaTest::NetworkParameters.testNet
#params = NetworkParameters.testNet
puts 'hi'
