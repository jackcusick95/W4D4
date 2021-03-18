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
    subject(:matrix) { Array.new }


end

