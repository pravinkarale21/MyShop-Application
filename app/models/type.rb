class Type < ActiveRecord::Base
  attr_accessible :Type
  has_many :subtypes ,dependent: :destroy
end
