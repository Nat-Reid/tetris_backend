class Api::V1::ScoresController < ApplicationController
  
  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    @user = User.find_or_create_by(initials: score_params[:initials])
    @user.scores.create(score: score_params[:score])
    render json: @score
  end

  private 
  def score_params
    params.permit(:score, :initials)
  end
end
