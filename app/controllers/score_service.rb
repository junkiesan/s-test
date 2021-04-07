class ScoreService
  def initialize(params)
    @params = params
  end

  def call
    results = []
    params_stringify = @params.to_s
    params_array = params_stringify.split(',')
    results << [params_array[1], params_array[3], params_array[4]]
    str_results = results.join
    cleaned_str = str_results.gsub(/\s+/m, ' ').strip.split(" ").join 
    good_answer = cleaned_str.scan(/(true)/)
    bad_answer = cleaned_str.scan(/(false)/)
    return [good_answer, bad_answer]
  end
end