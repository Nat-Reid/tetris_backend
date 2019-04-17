class Api::V1::ScoresController < ApplicationController
  
  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    # @score = Score.create(score_params)
    @user = User.find_or_create_by(initials: score_params[:initials])
    # tiffany.scores.create(score:1200)
    @user.scores.create(score: score_params[:score])
    byebug
    render json: @score
  end

  private 
  def score_params
    params.permit(:score, :initials)
  end
end
