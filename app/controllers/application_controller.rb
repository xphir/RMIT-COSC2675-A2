class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # Add in helpers
  include ApplicationHelper
  include SessionsHelper

  # Populate all the data
  before_action :populate

  # Adds all the data in so it is accesible for menus, and the selected items on a given page.
  def populate
    # User
    #@users = User.all.order(:name)
    #@user = User.new

    # Location
    @locations = Location.all.order(:name)
    @location = Location.new

    # Cateogry
    @categories = Category.all.order(:name)
    @category = Category.new

    # Course
    @courses = Course.all.order(:name)
    @course = Course.new
  end
end

