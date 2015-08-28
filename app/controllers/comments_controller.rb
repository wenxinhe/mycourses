class CommentsController < ApplicationController
  
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  
  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.create(params[:comment])
    redirect_to welcome_index_path
  end
  
  def destroy
    @course = Course.find(params[:course_id])
    @comment = @course.comments.find(params[:id])
    @comment.destroy
    redirect_to course_path(@course)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
