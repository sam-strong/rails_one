class User < ActiveRecord::Base
  attr_accessible :age, :first_name, :last_name

  validates :first_name, :presence => true
  validates :last_name, :presence => true

end
