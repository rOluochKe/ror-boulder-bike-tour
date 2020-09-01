class ContestsController < ApplicationController
  def index
    @contests = Contest.all.order(created_at: :desc)
  end

  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(contest_params)
    if @contest.save
      flash[:success] = 'Your contest was successfully saved!'
      redirect_to new_contest_path
    else
      render :new
    end
  end

  private

  def contest_params
    params.require(:contest).permit(:first_name, :last_name, :email, :slogan)
  end
end
