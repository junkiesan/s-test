class QuizzesController < ApplicationController
  before_action :set_quizz, only: [:show]
  
  def show
    @questions = Quizz.questions
    @answers = @questions.answers
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
