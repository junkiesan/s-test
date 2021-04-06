class Quizz < ApplicationRecord
  # Active Record validations
    # `difficulty` has to be one of the options
  validates :difficulty, inclusion: { in: DIFFICULTY }
  validates :title, presence: true
  validates :title, length: { in: 3..30,
                    too_long: "30 characters is the maximum allowed" }

  DIFFICULTY = ["easy", "medium", "hard"]
end