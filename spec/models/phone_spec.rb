require 'rails_helper'

RSpec.describe Phone, :type => :model do
  subject {
    Phone.new(number: "123456789", type: "work", main: 'false')
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a number' do
    subject.number = nil
    expect(subject).to be_invalid
  end
  it 'is not valid without work' do
    subject.type = nil
    expect(subject).to be_invalid
  end
  it 'is valid without a main' do
    subject.main = nil
    expect(subject).to be_invalid
  end
end
