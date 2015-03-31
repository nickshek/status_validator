class Test < ActiveRecord::Base
  extend StatusValidator
  define_status :field => :status,:available_status => [:active,:deleted],:default_value => :active
end
