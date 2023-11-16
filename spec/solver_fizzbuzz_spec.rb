require_relative '../solver'

RSpec.describe Solver do
  subject(:solver) { described_class.new }

  describe '#fizzbuzz' do
    context 'when Number is only divisible by 3' do
      it 'Should return "fizz"' do
        number = 9

        expected_result = 'fizz'

        expect(subject.fizzbuzz(number)).to eq(expected_result)
      end
    end

    context 'when Number is only divisible by 5' do
      it 'Should return "buzz"' do
        number = 10

        expected_result = 'buzz'

        expect(subject.fizzbuzz(number)).to eq(expected_result)
      end
    end

    context 'when Number is divisible by both 3 AND 5' do
      it 'Should return "fizzbuzz"' do
        number = 15

        expected_result = 'fizzbuzz'

        expect(subject.fizzbuzz(number)).to eq(expected_result)
      end
    end

    context 'when Number is NOT divisible by 3 AND/OR 5' do
      it 'Should return Number as string "n" i.e: "7"' do
        number = 7

        expected_result = '7'

        expect(subject.fizzbuzz(number)).to eq(expected_result)
      end
    end

    context 'when Number is 0 zero' do
      it 'Should return Number as string "0"' do
        number = 0

        expected_result = '0'

        expect(subject.fizzbuzz(number)).to eq(expected_result)
      end
    end
  end
end
