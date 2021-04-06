class AnswersController < ApplicationController
  before_action :set_score, only: [:create]
  def create
    results = []
    params_stringify = params.to_s
    params_array = params_stringify.split(',')
    results << [params_array[1], params_array[2], params_array[3]]
    str_results = results.join
    cleaned_str = str_results.gsub(/\s+/m, ' ').strip.split(" ").join 
    good_answer = cleaned_str.scan(/(true)/)
    bad_answer = cleaned_str.scan(/(false)/)
    @score = good_answer.size
  end

  private 

  def is_passed?(@score)
    substraction = 3 - @score
    division = substraction / 3
    total = division * 100
    total > 60 ? "You passed the test" : "Sorry buy you failed, try again"
  end

  def set_score
    @score = 0
  end
end
