require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :price => "",
        :status => "",
        :category_id => "Category"
      ),
      stub_model(Product,
        :name => "Name",
        :price => "",
        :status => "",
        :category_id => "Category"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
