# spec_reverse_spec.rb

require_relative 'reverse'

describe '#reverse' do
  context 'when a string is provided' do
    it 'reverses the string' do
      expect(reverse('hello')).to eq('olleh')
      expect(reverse('world')).to eq('dlrow')
    end
  end

  context 'when an array is provided' do
    it 'reverses the array' do
      expect(reverse([1, 2, 3])).to eq([3, 2, 1])
      expect(reverse(%w[a b c])).to eq(%w[c b a])
    end
  end

  context 'when other data types are provided' do
    it 'raises an error' do
      expect { reverse(123) }.to raise_error(ArgumentError)
      expect { reverse(nil) }.to raise_error(ArgumentError)
    end
  end
end
