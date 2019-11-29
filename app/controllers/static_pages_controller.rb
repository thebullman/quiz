class StaticPagesController < ApplicationController
  def index
    @users = User.all
    @submission = Submission.all
  end

end