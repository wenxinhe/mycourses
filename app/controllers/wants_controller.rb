class WantsController < ApplicationController
  
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  
  def create
    @course = Course.find(params[:course_id])
    @want = @course.wants.create(params[:want])
    redirect_to welcome_index_path
  end
  
  def destroy
    @course = Course.find(params[:course_id])
    @want = @course.wants.find(params[:id])
    @want.destroy
    redirect_to course_path(@course)
  end

  private
    def want_params
      params.require(:want).permit(:wanter)
    end
end
