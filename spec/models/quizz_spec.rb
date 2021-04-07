require 'rails_helper'

RSpec.describe Quizz, type: :model do
  subject { described_class.new(title: "Shell quizz.", description: "Welcome to the new shell quizz of quizzator !", difficulty: "hard") }

  context "#initialize" do
    it { expect(subject).to be_valid }
  end

  describe 'validations' do
    it 'is invalid without a title' do
      subject.title = nil
      expect(subject).to be_invalid
    end

    it 'is invalid with a long title' do
      subject.title = "1234567891011121314151617181920"
      expect(subject).to be_invalid
    end
    
    it 'is invalid with a wrong difficulty' do
      subject.difficulty = "hardcore"
        expect(subject).to be_invalid
    end
  end

  describe 'associations' do
    it { should have_many(:questions) }
  end
end
