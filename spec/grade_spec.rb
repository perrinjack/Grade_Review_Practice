# frozen_string_literal: true

require './lib/grade.rb'
RSpec.describe '#grade' do
  it 'returns Green : 1 for Green input' do
    expect(grade('Green')).to eq 'Green: 1'
  end
end
