class Product < ActiveRecord::Base
  has_many :lines
  has_many :orders, through: :lines
end
