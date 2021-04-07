require 'rails_helper'

RSpec.describe Quizz, type: :model do
  subject { described_class.new(title: "Shell quizz.", descritpion: "Welcome to the new shell quizz of quizzator !", difficulty: "hard") }

  describe 'validations' do
    it 'is invalid without a title' do
      expect(build(:quiz, title: nil)).to be_invalid
    end
  end
end
