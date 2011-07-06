require 'spec_helper'

describe "cash_receipts/edit.html.erb" do
  before(:each) do
    @cash_receipt = assign(:cash_receipt, stub_model(CashReceipt,
      :concept => "MyString",
      :amount => "9.99",
      :account => nil,
      :posted => false
    ))
  end

  it "renders the edit cash_receipt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cash_receipts_path(@cash_receipt), :method => "post" do
      assert_select "input#cash_receipt_concept", :name => "cash_receipt[concept]"
      assert_select "input#cash_receipt_amount", :name => "cash_receipt[amount]"
      assert_select "input#cash_receipt_account", :name => "cash_receipt[account]"
      assert_select "input#cash_receipt_posted", :name => "cash_receipt[posted]"
    end
  end
end
