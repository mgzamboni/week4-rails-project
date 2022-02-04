require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
    User.new(name: "Anything", age: 20, bio: "Lorem ipsum")
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to be_invalid
  end
  it 'is valid without a age' do
    subject.age = nil
    expect(subject).to be_valid
  end
  it 'is valid without a bio' do
    subject.bio = nil
    expect(subject).to be_valid
  end
end
