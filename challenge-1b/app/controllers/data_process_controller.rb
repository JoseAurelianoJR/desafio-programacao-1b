class DataProcessController < ApplicationController

  def index
    @buyers = Buyer.all
    @total_balance = Buyer.total_balance
  end

  def process_file
    buyer = Buyer.new
    buyer.parse_file! params[:file_to_process]
    redirect_to root_path
  end

end
