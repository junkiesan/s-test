require 'rails_helper'

RSpec.describe Question, type: :model do
  subject { described_class.new(title: "What is the purpose of cd ?") }

  describe 'validations' do
    it 'is invalid without a title' do
      subject.title = nil
      expect(subject).to be_invalid
    end    
  end

  describe 'associations' do
    it { should have_many(:answers) }
    it { should belong_to(:quizz) }
  end
end
