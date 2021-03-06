require_relative '../sudoku'

<<<<<<< HEAD
=======
describe "Sudoku" do
  let(:board) { [
    {id:0, row: 0, column: 0, box: 0, value: '5'},
    {id:1, row: 0, column: 1, box: 0, value: '-'},
    {id:2, row: 0, column: 2, box: 0, value: '2'},
    {id:3, row: 0, column: 3, box: 1, value: '3'},
    {id:4, row: 0, column: 4, box: 1, value: '4'},
    {id:5, row: 0, column: 5, box: 1, value: '-'},
    {id:6, row: 0, column: 6, box: 2, value: '7'},
    {id:7, row: 0, column: 7, box: 2, value: '8'},
    {id:8, row: 0, column: 8, box: 2, value: '-'},
    {id:9, row: 0, column: 0, box: 0, value: '7'},
    {id:10, row: 1, column: 1, box: 0, value: '-'},
    {id:11, row: 1, column: 2, box: 0, value: '-'},
    {id:12, row: 1, column: 3, box: 1, value: '-'},
    {id:13, row: 1, column: 4, box: 1, value: '-'},
    {id:14, row: 1, column: 5, box: 1, value: '-'},
    {id:15, row: 1, column: 6, box: 2, value: '-'},
    {id:16, row: 1, column: 7, box: 2, value: '-'},
    {id:17, row: 1, column: 8, box: 2, value: '-'},
    ] }
  context 'check populate_board return' do
    it 'returns board when board is populated' do

    expect(solve(board)).to eql [
    {id:0, row: 0, column: 0, box: 0, value: '5'},
    {id:1, row: 0, column: 1, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
    {id:2, row: 0, column: 2, box: 0, value: '2'},
    {id:3, row: 0, column: 3, box: 1, value: '3'},
    {id:4, row: 0, column: 4, box: 1, value: '4'},
    {id:5, row: 0, column: 5, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:6, row: 0, column: 6, box: 2, value: '7'},
    {id:7, row: 0, column: 7, box: 2, value: '8'},
    {id:8, row: 0, column: 8, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    {id:9, row: 0, column: 0, box: 0, value: '7'},
    {id:10, row: 1, column: 1, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
    {id:11, row: 1, column: 2, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
    {id:12, row: 1, column: 3, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:13, row: 1, column: 4, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:14, row: 1, column: 5, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:15, row: 1, column: 6, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    {id:16, row: 1, column: 7, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    {id:17, row: 1, column: 8, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    ]
    end
  end
end

describe 'check_methods' do
  let(:board) { [
    {id:0, row: 0, column: 0, box: 0, value: '5'},
    {id:1, row: 0, column: 1, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
    {id:2, row: 0, column: 2, box: 0, value: '2'},
    {id:3, row: 0, column: 3, box: 1, value: '3'},
    {id:4, row: 0, column: 4, box: 1, value: '4'},
    {id:5, row: 0, column: 5, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:6, row: 0, column: 6, box: 2, value: '7'},
    {id:7, row: 0, column: 7, box: 2, value: '8'},
    {id:8, row: 0, column: 8, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    {id:9, row: 0, column: 0, box: 0, value: '7'},
    {id:10, row: 1, column: 1, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
    {id:11, row: 1, column: 2, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
    {id:12, row: 1, column: 3, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:13, row: 1, column: 4, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:14, row: 1, column: 5, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
    {id:15, row: 1, column: 6, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    {id:16, row: 1, column: 7, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    {id:17, row: 1, column: 8, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
    ] }

  context 'check column' do
    it 'returns true if the number is in the column' do
      expect(check_column?(board, 0, '5')).to eq true
    end
    it 'returns false if the number is not in the column' do
      expect(check_column?(board, 2, '5')).to eq false
    end
  end

  context 'check row' do
    it 'returns true if the number is in the row' do
      expect(check_row?(board, 0, '8')).to eq true
    end
    it 'returns false if the number is not in the row' do
      expect(check_row?(board, 1, '5')).to eq false
    end
  end

  context 'check boxes' do
    it 'returns true if the number is in the box' do
      expect(check_box?(board, 0, '2')).to eq true
    end
    it 'returns false if the number is not in the box' do
      expect(check_box?(board, 2, '5')).to eq false
    end
  end
end

>>>>>>> 9375ebcf9807cf8cafa56b9ddefb43b9f515899c
board = [
    {id:0, row: 0, column: 0, box: 0, value: '5'},
    {id:1, row: 0, column: 1, box: 0, value: '25'},
    {id:2, row: 0, column: 2, box: 0, value: '100'}]

describe "get_value" do
  it "returns a value from an array of hashes" do
    expect(get_value(board, 2)).to eq ['100']
  end
end

describe "set_value" do
  it "sets the value for the given id" do
  expect(set_value(board, 2, 115)).to eq [115]
  end
end

describe 'check_methods' do
	let(:board) { [
		{id:0, row: 0, column: 0, box: 0, value: '5'},
		{id:1, row: 0, column: 1, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
		{id:2, row: 0, column: 2, box: 0, value: '2'},
		{id:3, row: 0, column: 3, box: 1, value: '3'},
		{id:4, row: 0, column: 4, box: 1, value: '4'},
		{id:5, row: 0, column: 5, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
		{id:6, row: 0, column: 6, box: 2, value: '7'},
		{id:7, row: 0, column: 7, box: 2, value: '8'},
		{id:8, row: 0, column: 8, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
		{id:9, row: 0, column: 0, box: 0, value: '7'},
		{id:10, row: 1, column: 1, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
		{id:11, row: 1, column: 2, box: 0, value: ['1','2','3','4','5','6','7','8','9']},
		{id:12, row: 1, column: 3, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
		{id:13, row: 1, column: 4, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
		{id:14, row: 1, column: 5, box: 1, value: ['1','2','3','4','5','6','7','8','9']},
		{id:15, row: 1, column: 6, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
		{id:16, row: 1, column: 7, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
		{id:17, row: 1, column: 8, box: 2, value: ['1','2','3','4','5','6','7','8','9']},
		] }

	context 'check column' do
		it 'returns true if the number is in the column' do
			expect(check_column?(board, 0, '5')).to eq true
		end
		it 'returns false if the number is not in the column' do
			expect(check_column?(board, 2, '5')).to eq false
		end
	end

	context 'check row' do
		it 'returns true if the number is in the row' do
			expect(check_row?(board, 0, '8')).to eq true
		end
		it 'returns false if the number is not in the row' do
			expect(check_row?(board, 1, '5')).to eq false
		end

	end

	context 'check boxes' do
		it 'returns true if the number is in the box' do
			expect(check_box?(board, 0, '2')).to eq true
		end
		it 'returns false if the number is not in the box' do
			expect(check_box?(board, 2, '5')).to eq false
		end
	end
end

describe 'Populate Board' do
	board_string = '1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--'
	it 'returns an array when board has been populated' do
		expect(populate_board('')).to be_a(Array)
	end

	it 'returns an 81 element array when populated' do
		expect(populate_board(board_string).length).to eq 81
	end

	# it 'returns an array with '
end

describe 'process cell method' do
	let(:board) { [
		{id:0, row: 0, column: 0, box: 0, value: ['1','2','3','4','5','6','7','8','9']}, ## should be 1
		{id:75, row: 8, column: 0, box: 6, value: '2'}, # not in box
		{id:76, row: 8, column: 0, box: 6, value: '3'}, # not in box
		{id:77, row: 8, column: 0, box: 6, value: '4'}, # not in box
		{id:78, row: 8, column: 0, box: 6, value: '5'}, # not in box
		{id:79, row: 8, column: 0, box: 6, value: '6'}, # not in box
		{id:70, row: 8, column: 0, box: 6, value: '7'}, # not in box
		{id:71, row: 0, column: 2, box: 6, value: '8'},
		{id:72, row: 0, column: 2, box: 0, value: '9'}

		] }

	context 'blank cell' do
			it 'does nothing when there is no clear solution' do
				expect(process_cell(board, 45)).to eq nil
		end
			it 'fills the correct number to the cell' do
				expect(process_cell(board, 0)).to eq '1'
		end
	end
end
<<<<<<< HEAD
=======

board1 = [
    {id:0, row: 0, column: 0, box: 0, value: [1,2,3,4,5]},
    {id:1, row: 0, column: 1, box: 0, value: [2]},
    {id:2, row: 0, column: 2, box: 0, value: [3]},
    ]

board2 = [
    {id:0, row: 0, column: 0, box: 0, value: [1]},
    {id:1, row: 0, column: 1, box: 0, value: [2]},
    {id:2, row: 0, column: 2, box: 0, value: [3]},
    ]

describe 'completed?' do
  context 'more than one, false' do
    it 'returns false if any values in the array have more than one element' do
    expect(completed?(board1)).to eq false
    end
  end
  context 'completed, true' do
    it 'returns true if all values in the array have one element' do
      expect(completed?(board2)).to eq true
    end
  end
end

>>>>>>> 9375ebcf9807cf8cafa56b9ddefb43b9f515899c
