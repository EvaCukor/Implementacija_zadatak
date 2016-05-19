class Receipt < ActiveRecord::Base
  validates_presence_of :name
  
  belongs_to :user
  belongs_to :store
  
  has_many :items
  
  accepts_nested_attributes_for :items, reject_if: :reject_items

  def reject_items(attributed)
    attributed['name'].blank?
    attributed['price'].blank?
  end
end