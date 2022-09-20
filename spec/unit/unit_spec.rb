# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', price: 12.34, release: "1996-12-19T16:39:57-08:00", author: "that lady")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    subject.title = "harry potter"
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    subject.author = "that lady"
    expect(subject).not_to be_valid
  end

  it 'is not valid without a release' do
    subject.release = nil
    subject.price = 12.12
    expect(subject).not_to be_valid
  end
end