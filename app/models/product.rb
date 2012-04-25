class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :price, :status
end
