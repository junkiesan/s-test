require 'rails_helper'

RSpec.describe Answer, type: :model do
  subject { described_class.new(title: "It's not to navigate through computer", status: false) }
  
  describe 'validations' do
    it 'is invalid without a title' do
      subject.title = nil
      expect(subject).to be_invalid
    end    
  end

  describe 'associations' do
    it { should belong_to(:question) }
  end
end
