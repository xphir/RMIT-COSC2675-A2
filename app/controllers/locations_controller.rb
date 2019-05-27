class LocationsController < ApplicationController
  # Checking Permissions
  before_action :logged_users_only, except: [:index, :show]
  before_action :admin_only, only: [:destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    set_location
    @courses = @location.courses
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
    set_location
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, flash: {success: "Successfully created #{@location.name} location!" }}
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    set_location

    respond_to do |format|
      if @location.update_attributes(location_params)
        format.html { redirect_to @location, flash: {success: "Successfully updated #{@location.name} location!" }}
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    set_location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, flash: {success: "Successfully deleted #{@location.name} location!" }}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit([:name])
    end
end
