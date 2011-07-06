require 'spec_helper'

describe "cash_receipts/index.html.erb" do
  before(:each) do
    assign(:cash_receipts, [
      stub_model(CashReceipt,
        :concept => "Concept",
        :amount => "9.99",
        :account => nil,
        :posted => false
      ),
      stub_model(CashReceipt,
        :concept => "Concept",
        :amount => "9.99",
        :account => nil,
        :posted => false
      )
    ])
  end

  it "renders a list of cash_receipts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Concept".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
