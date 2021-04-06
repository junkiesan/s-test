class Question < ApplicationRecord
  # Active Record associations
  belongs_to :quizz
  has_many :answers, dependent: :destroy
  # Let a Question having 3 answers
  validates_length_of :answers, maximum: 4
end
 