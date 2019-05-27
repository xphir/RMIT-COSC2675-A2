class CategoriesController < ApplicationController
  # Checking Permissions
  before_action :logged_users_only, only: [:create, :new, :update]
  before_action :admin_only, only: [:destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    set_category
    @courses = @category.courses
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    set_category
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, flash: {success: "Successfully created #{@category.name} category!" }}
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    set_category

    respond_to do |format|
      if @category.update_attributes(category_params)
        format.html { redirect_to @category, flash: {success: "Successfully updated #{@category.name} category!" }}
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    set_category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, flash: {success: "Successfully deleted #{@category.name} category!" }}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit([:name])
    end
end
