class PagesController < ApplicationController
  def home
    @quizzes = Quizz.all
  end

  def dashboard
    @user = current_user
  end
end
