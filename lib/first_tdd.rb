class Array

    def my_uniq
        self.uniq
    end

    def two_sum
        new_arr = []
        i = 0
        while i < self.length
            self.each_with_index do |num,idx1|
                if (idx1 > i) && (self[i] + num == 0)
                    new_arr << [i,idx1]
                end
            end
            i += 1
        end
        new_arr.sort

        # (0...self.length-1).each do |i|
        #     (i+1...self.length).each do |j|

        #     end
        # end

        # combination(2) => pairs
        # find the pairs that == 0
        # convert them into indices using .map { index(el) }

    end

    def my_transpose
        self[0].zip(*self[1..-1])
    end 

end

def stock_picker(stocks)
    day_pairs = stocks.combination(2)
    max_profit = day_pairs.max { |a, b| (a[1] - a[0]) <=> (b[1] - b[0]) }
    day_1 = stocks.index(max_profit[0])
    day_2 = stocks.index(max_profit[1])
    [day_1, day_2]
end 


class TowersOfHanoi

    attr_reader :pegs

    def initialize(num)
        @pegs = [(1..num).to_a.reverse, [], [] ]
    end

    def move(start_peg, end_peg)
        s = start_peg - 1
        e = end_peg - 1

        @pegs[e] << @pegs[s].pop

    end

    def valid_move?(start_peg, end_peg)
        s = start_peg - 1
        e = end_peg - 1

        return false unless [s,e].all? { |x| x.between?(0, 2)}
        valid_move = @pegs[e].empty? || (@pegs[s][-1] < @pegs[e][-1]) 

        valid_move
    end


end
