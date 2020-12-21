require 'music_filter'

describe 'music_filter' do
  it 'returns an unaltered array when integers are within thresholds' do
    expect(music_filter([20, 40, 60], 20, 60)).to eq([20, 40, 60])
  end
end
