class SubCategoryNeighborhoodsController < ApplicationController
  before_action :authorize_request
  before_action :set_sub_category_neighborhood, only: [:show, :edit, :update, :destroy]

  # GET /sub_category_neighborhoods
  # GET /sub_category_neighborhoods.json
  def index
    @sub_category_neighborhoods = SubCategoryNeighborhood.all
  end

  # GET /sub_category_neighborhoods/1
  # GET /sub_category_neighborhoods/1.json
  def show
  end

  # GET /sub_category_neighborhoods/new
  def new
    @sub_category_neighborhood = SubCategoryNeighborhood.new
  end

  # GET /sub_category_neighborhoods/1/edit
  def edit
  end

  # POST /sub_category_neighborhoods
  # POST /sub_category_neighborhoods.json
  def create
    @sub_category_neighborhood = SubCategoryNeighborhood.new(sub_category_neighborhood_params)

    respond_to do |format|
      if @sub_category_neighborhood.save
        format.html { redirect_to @sub_category_neighborhood, notice: 'Sub category neighborhood was successfully created.' }
        format.json { render :show, status: :created, location: @sub_category_neighborhood }
      else
        format.html { render :new }
        format.json { render json: @sub_category_neighborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_category_neighborhoods/1
  # PATCH/PUT /sub_category_neighborhoods/1.json
  def update
    respond_to do |format|
      if @sub_category_neighborhood.update(sub_category_neighborhood_params)
        format.html { redirect_to @sub_category_neighborhood, notice: 'Sub category neighborhood was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_category_neighborhood }
      else
        format.html { render :edit }
        format.json { render json: @sub_category_neighborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_category_neighborhoods/1
  # DELETE /sub_category_neighborhoods/1.json
  def destroy
    @sub_category_neighborhood.destroy
    respond_to do |format|
      format.html { redirect_to sub_category_neighborhoods_url, notice: 'Sub category neighborhood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_category_neighborhood
      @sub_category_neighborhood = SubCategoryNeighborhood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_category_neighborhood_params
      params.require(:sub_category_neighborhood).permit(:sub_category_id, :neighborhood_id, :price)
    end
end
