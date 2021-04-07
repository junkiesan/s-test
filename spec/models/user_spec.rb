require 'rails_helper'

RSpec.describe User, type: :model do

  subject { described_class.new(username: "Julien", password: "123456",encrypted_password: "123456") }

  describe 'validations' do
    it 'is valid without an email' do
      expect(subject).to be_valid
    end

    it 'is invalid without an username' do
      subject.username = nil
      expect(subject).to be_invalid
    end

    it 'is invalid without a password' do
      subject.password = nil
      expect(subject).to be_invalid
    end
  end
end
