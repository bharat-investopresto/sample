require 'spec_helper'

describe Product do
   it "can be instantitated " do
       Product.new.should be_an_instance_of(Product)
   end

   it "can be saved successfully" do 
     Product.create.should be_persisted
   end
end
