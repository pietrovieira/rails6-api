class OrderShippingsController < ApplicationController
  before_action :set_order_shipping, only: [:show, :edit, :update, :destroy]

  # GET /order_shippings
  # GET /order_shippings.json
  def index
    @order_shippings = OrderShipping.all
  end

  # GET /order_shippings/1
  # GET /order_shippings/1.json
  def show
  end

  # GET /order_shippings/new
  def new
    @order_shipping = OrderShipping.new
  end

  # GET /order_shippings/1/edit
  def edit
  end

  # POST /order_shippings
  # POST /order_shippings.json
  def create
    @order_shipping = OrderShipping.new(order_shipping_params)

    respond_to do |format|
      if @order_shipping.save
        format.html { redirect_to @order_shipping, notice: 'Order shipping was successfully created.' }
        format.json { render :show, status: :created, location: @order_shipping }
      else
        format.html { render :new }
        format.json { render json: @order_shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_shippings/1
  # PATCH/PUT /order_shippings/1.json
  def update
    respond_to do |format|
      if @order_shipping.update(order_shipping_params)
        format.html { redirect_to @order_shipping, notice: 'Order shipping was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_shipping }
      else
        format.html { render :edit }
        format.json { render json: @order_shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_shippings/1
  # DELETE /order_shippings/1.json
  def destroy
    @order_shipping.destroy
    respond_to do |format|
      format.html { redirect_to order_shippings_url, notice: 'Order shipping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_shipping
      @order_shipping = OrderShipping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_shipping_params
      params.require(:order_shipping).permit(:order_id, :address, :num, :neighborhood, :city, :uf)
    end
end
