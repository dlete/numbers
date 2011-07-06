require 'spec_helper'

describe "cash_receipts/show.html.erb" do
  before(:each) do
    @cash_receipt = assign(:cash_receipt, stub_model(CashReceipt,
      :concept => "Concept",
      :amount => "9.99",
      :account => nil,
      :posted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Concept/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
