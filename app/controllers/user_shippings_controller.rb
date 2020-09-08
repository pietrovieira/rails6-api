class UserShippingsController < ApplicationController
  before_action :authorize_request
  before_action :set_user_shipping, only: [:show, :edit, :update, :destroy]

  # GET /user_shippings
  # GET /user_shippings.json
  def index
    @user_shippings = UserShipping.all
  end

  # GET /user_shippings/1
  # GET /user_shippings/1.json
  def show
  end

  # GET /user_shippings/new
  def new
    @user_shipping = UserShipping.new
  end

  # GET /user_shippings/1/edit
  def edit
  end

  # POST /user_shippings
  # POST /user_shippings.json
  def create
    @user_shipping = UserShipping.new(user_shipping_params)

    respond_to do |format|
      if @user_shipping.save
        format.html { redirect_to @user_shipping, notice: 'User shipping was successfully created.' }
        format.json { render :show, status: :created, location: @user_shipping }
      else
        format.html { render :new }
        format.json { render json: @user_shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_shippings/1
  # PATCH/PUT /user_shippings/1.json
  def update
    respond_to do |format|
      if @user_shipping.update(user_shipping_params)
        format.html { redirect_to @user_shipping, notice: 'User shipping was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_shipping }
      else
        format.html { render :edit }
        format.json { render json: @user_shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_shippings/1
  # DELETE /user_shippings/1.json
  def destroy
    @user_shipping.destroy
    respond_to do |format|
      format.html { redirect_to user_shippings_url, notice: 'User shipping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_shipping
      @user_shipping = UserShipping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_shipping_params
      params.require(:user_shipping).permit(:zipcode, :address, :num, :user_id, :neighborhood_id, :city_id, :uf, :lat, :long)
    end
end
