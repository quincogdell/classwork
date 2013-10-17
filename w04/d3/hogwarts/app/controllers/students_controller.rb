class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(params[:student])
    redirect_to '/students'
  end

end
