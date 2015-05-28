class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :lines
  has_many :products, through: :lines
end
