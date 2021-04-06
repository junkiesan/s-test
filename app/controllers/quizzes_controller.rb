class QuizzesController < ApplicationController
  before_action :set_quizz, only: [:show]
  
  def index
    @quizzes = Quizz.all
  end

  def show
    @questions = @quizz.questions
    @answer = Answer.new
    @good_answer = Answer.where(status: true)
  end

  def create
    @quizz = Quizz.new(quizz_params)
    @quizz.save!
    redirect_to quiz_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quizz
    @quizz = Quizz.find(params[:id])
  end

  # Never trust parameters from user, only allow the white list through.
  def quizz_params
    params.require(:quizz).permit(:title, :description, :difficulty)
  end
end
