class Order < ApplicationRecord
  belongs_to :table
  belongs_to :client
  
  has_many :ordered_foods
  has_many :foods, through: :ordered_foods
end
