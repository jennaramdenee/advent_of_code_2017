require_relative '../lib/day_1_part_2'

RSpec.describe 'Day 1 Challenge Part 2' do
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
    it 'correctly calculates output' do
      test_arr = [1, 2, 3, 4, 2, 5]
      expect(calculate_interval_puzzle(test_arr)).to eq(4)
    end
  end

  context '#solve_puzzle' do
    it 'correctly solves the puzzle' do
      test_str = "123425"
      expect(solve_puzzle(test_str)).to eq(4)
    end
  end
end
