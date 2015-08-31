class WelcomeController < ApplicationController
  def index
  	@courses = Course.all.order('CAST(no as INT) ASC')
  	@feedbacks = Feedback.all
  end
end
