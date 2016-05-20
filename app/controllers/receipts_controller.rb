class ReceiptsController < ApplicationController
  before_action :require_user
  autocomplete :item, :name
  
  def index
  end
  
  def new
    @receipt = Receipt.new
    @receipt.items.build
  end
  
  def create
    @receipt = Receipt.new(receipt_params)
    @receipt.user_id = current_user.id
    
    if @receipt.save
      flash[:notice] = "Račun je uspješno spremljen."
      redirect_to receipts_path
    else
      @receipt.items.build
      render :new
    end
  end
  
  private
  
  def receipt_params
    params.require(:receipt).permit!
  end
end