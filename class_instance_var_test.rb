  # why I don't like @@attributes
  class Base
    @@shared = 'cattr from base'
    class << self
      attr_accessor :unshared
    end
    def self.shared
      @@shared
    end
    self.unshared = 'attr from base'
  end
  class Derived < Base
    @@shared = 'cattr from derived'
    self.unshared = 'attr from derived'
  end
  class Ouch
    class << self
      attr_accessor :unshared
    end
    def self.shared
      @@shared
    end
  end
  puts Base.unshared
  puts Base.shared
  puts Derived.unshared
  puts Derived.shared
  puts Ouch.unshared
  puts Ouch.shared
