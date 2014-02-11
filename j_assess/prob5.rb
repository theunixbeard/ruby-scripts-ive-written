require 'active_support/all'

class Admin
  cattr_accessor :tabs
  @@tabs = %w(users)  
  class << self
    def add_tab(tab)
      @@tabs = @@tabs | [tab]
    end
    
    def tabs
      @@tabs.sort
    end  
  end
end

admin = Admin.new

puts admin.tabs
Admin.add_tab(['bob', 'jim', 'soledad'])
puts admin.tabs
