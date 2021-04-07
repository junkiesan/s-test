class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
    @quizzes = Quizz.all
  end

  def dashboard
    @user = current_user
    score = session[:score]
    @scores = score.save!
  end
end
