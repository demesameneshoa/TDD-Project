require_relative '../solver'

RSpec.describe Solver do
    describe '#factorial' do
      it 'returns 1 for input 0' do
        expect(Solver.factorial(0)).to eq(1)
      end
  
      it 'returns 1 for input 1' do
        expect(Solver.factorial(1)).to eq(1)
      end
  
      it 'returns the correct factorial for positive integers' do
        expect(Solver.factorial(5)).to eq(120)
        # Add more test cases as needed
      end
  
      it 'raises an ArgumentError for negative integers' do
        expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
      end
    end
  end