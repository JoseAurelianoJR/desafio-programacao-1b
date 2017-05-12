require 'rails_helper'

RSpec.describe Buyer, :type => :model do
  let(:buyer) {FactoryGirl.create(:buyer)}

  describe 'operations_check' do
    before(:each) do
      FactoryGirl.create_list(:buyer, 2)
    end

    it "return total balance of purchases" do
      expect(Buyer.total_balance).to eq(4.0)
    end

    it "check if all is inserted" do
      expect(Buyer.all.count).to eq(2)
    end

    it "price is a correct money type" do
      is_expected.to monetize(:price)
    end

    it "total is a correct money type" do
      is_expected.to monetize(:total)
    end

    it "check currency of values" do
      is_expected.to monetize(:price).with_currency(:brl)
      is_expected.to monetize(:total).with_currency(:brl)
    end
  end
end
