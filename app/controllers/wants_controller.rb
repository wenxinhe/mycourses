class WantsController < ApplicationController
  
  http_basic_authenticate_with name: "vincent", password: "123", only: :destroy
  
  def create
    @course = Course.find(params[:course_id])
    @want = @course.wants.create(params[:want])
    @want.update_attributes(:wanter => request.remote_ip)
    
    redirect_to courses_path, notice: '您选择了"' + @course.title + '"，感谢您的反馈，谢谢！'
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
