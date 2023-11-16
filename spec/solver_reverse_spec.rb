# spec_reverse_spec.rb

require_relative '../solver'

describe '#reverse' do
  context 'when a string is provided' do
    it 'reverses the string' do
      expect(Solver.reverse('hello')).to eq('olleh')
      expect(Solver.reverse('world')).to eq('dlrow')
    end
  end

  context 'when an array is provided' do
    it 'reverses the array' do
      expect(Solver.reverse([1, 2, 3])).to eq([3, 2, 1])
      expect(Solver.reverse(%w[a b c])).to eq(%w[c b a])
    end
  end

  context 'when other data types are provided' do
    it 'raises an error' do
      expect { Solver.reverse(123) }.to raise_error(ArgumentError)
      expect { Solver.reverse(nil) }.to raise_error(ArgumentError)
    end
  end
end
