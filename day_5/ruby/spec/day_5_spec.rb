require_relative '../lib/day_5'

RSpec.describe 'Day 5' do
  context '#convert_to_int' do
    it 'returns an array of integers' do
      expect(convert_to_int("5\n4\n3").is_a?(Array)).to be(true)
    end

    it 'converts all strings to a corresponding integer' do
      expect(convert_to_int("5\n4\n3")).to eq([5,4,3])
    end
  end

  context '#new_index' do
    context 'with a movement of 0' do
      it 'returns a new position equal to current position' do
        expect(new_index(0, 0)).to eq(0)
      end
    end

    context 'with a positive movement' do
      it 'returns a new position ahead of current position' do
        expect(new_index(1, 3)).to eq(4)
      end
    end

    context 'with a negative movement' do
      it 'returns a new position behind of current position' do
        expect(new_index(4, -2)).to eq(2)
      end
    end
  end

  context '#in_maze?' do
    it 'returns true if a given position is in the maze' do
      expect(in_maze?(3, [1,35,6,7])).to eq(true)
    end

    it 'returns false if a given position is not in the maze' do
      expect(in_maze?(7, [1,35,6,7])).to eq(false)
    end
  end

  context '#solve' do
    it 'calculates the correct number of steps to exit the maze' do
      expect(solve("0\n3\n0\n1\n-3")).to eq(5)
    end
  end


end
