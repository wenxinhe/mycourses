class CoursesController < ApplicationController

  http_basic_authenticate_with name: "vincent", password: "123", except: [:index]
  
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def index
    @courses = Course.all.order('CAST(no as INT) ASC')
    @feedbacks = Feedback.all
  end

  def admin
    @courses = Course.all.order('CAST(no as INT) ASC')
  end

  def edit
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end
  
  private
    def course_params
      params.require(:course).permit(:no, :title, :text)
    end
end
