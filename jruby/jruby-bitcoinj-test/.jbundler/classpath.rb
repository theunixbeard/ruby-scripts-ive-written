JBUNDLER_CLASSPATH = []
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/com/google/bitcoinj/0.8/bitcoinj-0.8.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/org/slf4j/slf4j-api/1.6.4/slf4j-api-1.6.4.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/io/netty/netty/3.6.3.Final/netty-3.6.3.Final.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/com/madgag/sc-light-jdk15on/1.47.0.2/sc-light-jdk15on-1.47.0.2.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/com/google/protobuf/protobuf-java/2.4.1/protobuf-java-2.4.1.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/com/google/guava/guava/13.0.1/guava-13.0.1.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/com/google/code/findbugs/jsr305/1.3.9/jsr305-1.3.9.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar'
JBUNDLER_CLASSPATH << '/Users/primary/.m2/repository/com/lambdaworks/scrypt/1.3.3/scrypt-1.3.3.jar'
JBUNDLER_CLASSPATH.freeze
JBUNDLER_CLASSPATH.each { |c| require c }
