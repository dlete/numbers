namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_account_types
    make_accounts
    make_cash_receipts
  end
end

def make_account_types
  AccountType.create!(:name => "Balance sheet")
  AccountType.create!(:name => "Assets and liabilities")
end

def make_accounts
  account_type_id = AccountType.find_by_name('Balance sheet').id
  Account.create!(:account_type_id => account_type_id,
                  :name => "Bank")
  Account.create!(:account_type_id => account_type_id,
                  :name => "Water and electricity")
end

def make_cash_receipts
  12.times do |n|
    date = Time.now
    concept = Faker::Lorem.sentence(word_count = 5)
    account_id = Account.find_by_name('Water and electricity').id
    amount = rand(60)
    CashReceipt.create!(:date => date,
                        :concept => concept,
                        :amount => amount,
                        :account_id => account_id)
  end
end
