class Subtype < ActiveRecord::Base
  attr_accessible :subtype, :typeid
  belongs_to :type 
end
