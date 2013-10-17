class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    Course.create(params[:course])
    redirect_to('/course')
  end

end
