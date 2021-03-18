require "first_tdd"

describe "#my_uniq" do

    it "should return the uniq elements in the order in which they appear in the array" do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end

end 

describe "#two_sum" do 

    it "should find all pairs of positions where elements at those positions sum to zero" do
        expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
    end

    it "should return indices sorted dictionary-wise" do
        expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
    end

end

describe "#my_transpose" do
    subject(:matrix) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }

    it "should return an n by n matrix with columns as the new rows" do
        expect(matrix.my_transpose).to eq(matrix.transpose)
    end 

end

describe "stock_picker" do
    subject(:stocks) { [12, 15, 13, 22, 9, 18, 19, 20] }

    it "should return the most profitable pair of days to buy and then sell the stock" do
        expect(stock_picker(stocks)).to eq([4,7]) 
    end 

end 

describe TowersOfHanoi do
    subject(:game) { TowersOfHanoi.new(array1) }
    let(:array1) { (1..6).to_a.reverse }
    # let(:array2) { Array.new }
    # let(:array3) { Array.new }

    describe "#initialize" do

        it "should have a starting array of six pieces" do
            expect(game.array1).to eq((1..6).to_a.reverse)
        end

        it "should have a 2nd array which is empty" do
            expect(game.array2).to eq([])
        end

        it "should have a 3rd array which is empty" do
            expect(game.array3).to eq([])
        end

    end

    describe "#move" do

        it "should move the top value off a peg and into another array"

    end


end