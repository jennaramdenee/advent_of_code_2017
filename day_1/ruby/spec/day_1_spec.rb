require_relative '../lib/day_1'

RSpec.describe 'Day 1 Challenge' do
  context '#convert_to_integers' do
    it 'converts empty string to empty array' do
      arr = ""
      expect(convert_to_integers(arr)).to eq([])
    end

    it 'converts non-empty string to non-empty array' do
      arr = "teststring"
      expect(convert_to_integers(arr).length).to be >1
    end

    it 'returns nil if non-string input is entered' do
      expect(convert_to_integers(123)).to eq(nil)
    end
  end

  context '#add_to_total' do
    before(:each) do
      @test_total = 4
    end

    it 'does not change total if zero value is added' do
      expect(add_to_total(@test_total, 0)).to eq(@test_total)
    end

    it 'changes total if non-zero value is added' do
      expect(add_to_total(@test_total, 6)).to eq(10)
    end
  end

  context '#calculate_puzzle' do
    it 'should correctly calculate puzzle output when last digit does not match the first' do
      arr = [1, 1, 2, 2]
      expect(calculate_puzzle(arr)).to eq(3)
    end

    it 'should correctly calculate puzzle output when last digit equals the first' do
      arr = [9, 1, 2, 1, 2, 1, 2, 9]
      expect(calculate_puzzle(arr)).to eq(9)
    end
  end
end
