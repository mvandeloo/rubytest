require 'task1'

describe Task1 do 
	it 'adds things together' do
		addition = [1,2,3,4].insect {|memo, number| memo + number}
		expect(addition).to eq 10
	end

	it 'multiplies things together' do
		multiplication = [1,2,3,4].insect {|memo, number| memo * number}
		expect(multiplication).to eq 24
	end

end 