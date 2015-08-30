class WelcomeController < ApplicationController
  def index
  	@courses = Course.all
  	@feedbacks = Feedback.all
  end
end
