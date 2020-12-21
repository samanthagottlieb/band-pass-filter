require 'music_filter'

describe 'music_filter' do
  it 'returns an unaltered array when integers are within thresholds' do
    expect(music_filter([20, 40, 60], 20, 60)).to eq([20, 40, 60])
  end

  context 'when passed an array with an integer below the low pass filter' do
    it 'returns an array with the lowest integer set to the low pass filter' do
      expect(music_filter([20, 40, 60], 30, 60)).to eq([30, 40, 60])
    end
  end

  context 'when passed an array with an integer above the high pass filter' do
    it 'returns an array with the highest integer set to the high pass filter' do
      expect(music_filter([20, 40, 60], 20, 50)).to eq([20, 40, 50])
    end
  end
end
