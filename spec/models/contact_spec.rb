require 'rails_helper'

RSpec.describe Contact, :type => :model do
  subject {
    Contact.new(name: "Anything", birthday: "10-10-1990")
  }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to be_invalid
  end
  it 'is valid without a birthday' do
    subject.birthday = nil
    expect(subject).to be_valid
  end
end
