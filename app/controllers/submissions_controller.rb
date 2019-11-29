class SubmissionsController < ApplicationController

  def index
    @submission = Submission.all
  end
 
  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.create(submit_params)
    if @submission.valid?
      redirect_to root_path
    else
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end         
  end

  def show
    @submission = Submission.find(params[:id])
  end

  
  private

  def submit_params
    params.require(:submission).permit(:message)
  end
end
