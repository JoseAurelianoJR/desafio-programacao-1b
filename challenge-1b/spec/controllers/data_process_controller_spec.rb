require 'rails_helper'

RSpec.describe DataProcessController, :type => :controller do
  describe '#index' do
    before { FactoryGirl.create_list(:buyer, 2) }
    before { get :index }
    
    it "expect load all purchases of database" do
      expect(assigns(:buyers)).to eq(Buyer.all)
    end

    it "expect total balance" do
      expect(assigns(:total_balance)).to eq(4)
    end

    it "render index template" do
      expect(response).to render_template(:index)
    end
  end
end
