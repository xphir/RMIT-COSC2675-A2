class CoursesController < ApplicationController
  # Checking Permissions
  before_action :logged_users_only, except: [:index, :show]
  before_action :admin_only, only: [:destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    set_course
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    set_course
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    # Assign course to user
    @course[:user_id] = current_user.id

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, flash: {success: "Successfully created #{@course.name} course!" }}
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    set_course

    respond_to do |format|
      if @course.update_attributes(course_params)
        format.html { redirect_to @course, flash: {success: "Successfully updated #{@course.name} course!" }}
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    set_course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, flash: {success: "Successfully deleted #{@course.name} course!" }}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit([:name, :description, :image, :prerequisite, :location_ids => [], :category_ids => []])
    end
end
