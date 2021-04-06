class Quizz < ApplicationRecord
  # Active Record associations
  has_many :questions, dependent: :destroy
  # Let a Quizz having 3 questions
  validates_length_of :questions, maximum: 3
  # Active Record validations
    # `difficulty` has to be one of the options
  validates :difficulty, inclusion: { in: DIFFICULTY }
  validates :title, presence: true
  validates :title, length: { in: 3..30,
                    too_long: "30 characters is the maximum allowed" }

  DIFFICULTY = ["easy", "medium", "hard"]
end
