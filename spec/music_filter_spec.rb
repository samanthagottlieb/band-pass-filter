require 'music_filter'

describe 'music_filter' do
  context 'when array integers are within low and high thresholds' do
    it 'returns an unaltered array ' do
      expect(music_filter([20, 40, 60], 20, 60)).to eq([20, 40, 60])
    end
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

  context 'when passed an array including nil' do
    it 'raises an error' do
      expect{ music_filter([20, 40, nil], 30, 50) }.to raise_error('this music track is corrupted')
    end
  end

  context 'when passed an empty array' do
    it 'raises an error' do
      expect{ music_filter([], 30, 50) }.to raise_error('this music track is corrupted')
    end
  end

  context 'when no low and high pass filters are given' do
    it 'sets the filters to the default values 40 and 1000' do
      expect(music_filter([20, 40, 1020])).to eq([40, 40, 1000])
    end
  end
end
