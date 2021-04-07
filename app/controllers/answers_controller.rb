class AnswersController < ApplicationController
  before_action :set_score, only: [:create]
  def create
    # Calling ScoreService to get clean data
    score = ScoreService.new(params).call
    @score = score.first.size
    # result message for user
    @welcome = is_passed?(@score)
    # getting data to send to dashboard via session[:params]
    @quizz = params[:answer].values
    session[:score] = []
    session[:score] << [@quizz, @score]
  end

  private 

  def is_passed?(score)
    return "You passed the test !" if score == 3 || score == 2
    "Sorry buy you failed, try again..."
  end

  def set_score
    @score = 0
  end
end
