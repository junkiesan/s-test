class AnswersController < ApplicationController
  before_action :set_score, only: [:create]
  def create
    results = []
    # results << params.each { |n| n.include?  "true" }
    # p results.false
    # safe_params = params.permit(:false)
    # safe_params.to_hash
    params_stringify = params.to_s
    params_array = params_stringify.split(',')
    results << [params_array[1], params_array[2], params_array[3]]
    str_results = results.join
    cleaned_str = str_results.gsub(/\s+/m, ' ').strip.split(" ").join 
    # good_answer = str_results.match(/(true)/) || 0
    p good_answer = cleaned_str.scan(/(true)/)
    # bad_answer = str_results.match(/(false)/) || 0
    p bad_answer = cleaned_str.scan(/(false)/)
    # yes = good_answer.size > 0 ? good_answer.size : 0
    p @score = good_answer.size
    # raise
  end

  private 

  def is_passed?

  end

  def set_score
    @score = 0
  end
end
