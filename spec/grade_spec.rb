# frozen_string_literal: true

require './lib/grade.rb'
RSpec.describe '#grade' do
  it 'returns Green : 1 for Green input' do
    expect(grade('Green')).to eq 'Green: 1'
  end

  it 'returns Red : 1 for Green input' do
    expect(grade('Red')).to eq 'Red: 1'
  end

  it 'returns Red: 1 Green: 2 for Red Green Green input' do
    expect(grade('Red, Green, Green')).to eq 'Red: 1 Green: 2'
  end

  it 'raises an error when no grades are supplied' do
    expect{grade('')}.to raise_error 'Please supply some grades'
  end
end
