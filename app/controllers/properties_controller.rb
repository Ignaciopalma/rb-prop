class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index

    @properties = Property.all

    if user_signed_in? 
      @user_properties = current_user.properties
    end

  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = current_user.properties.build
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = current_user.properties.build(property_params)
      if @property.save
        redirect_to @property, notice: 'Property was successfully created.' 
      else
        render :new 
      end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
      if @property.update(property_params)
        redirect_to @property, notice: 'Property was successfully updated.' 
      else
        render :edit 
      end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:direccion, :precio, :image)
    end
end
