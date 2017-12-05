class UserBrasController < ApplicationController

  def index         # GET /restaurants
    @user_bras = UserBra.all
    @user_bra = UserBra.new(user_bra_params)
    if @user_bra.save
      redirect_to product_url_params['product_buy_url']
    end
  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
    @user_bra = UserBra.new
  end

  def create        # POST /restaurants
    @user_bra = UserBra.new(user_bra_params)
    fail
    if @user_bra.save
      redirect_to catalog_bras
    end
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def user_bra_params
    params.require(:user_bra).permit(:measurement_id, :catalog_bra_id)
  end

  def product_url_params
    params.permit(:product_buy_url)
  end

end
