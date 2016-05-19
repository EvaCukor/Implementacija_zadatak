class Item < ActiveRecord::Base
  validates_presence_of :name, :price
  
  belongs_to :store
  belongs_to :receipt
end