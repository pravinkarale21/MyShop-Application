class Dailytransaction < ActiveRecord::Base
  attr_accessible :Type, :image_name, :price, :size, :sold_price, :subtype, :transact_date
end
