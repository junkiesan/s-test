class PagesController < ApplicationController
  def home
    @quizzes = Quizz.all
  end

  def dashboard
  end
end
