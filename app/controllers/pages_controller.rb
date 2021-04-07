class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
    @quizzes = Quizz.all
  end

  def dashboard
    @scores = []
    @user = current_user
    score = session[:score]
    @scores << [score[0][0][0], score[0][1]]
  end
end
