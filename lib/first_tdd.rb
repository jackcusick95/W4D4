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

        # combination => pairs
        # find the pairs that == 0
        # convert them into indices using .map { index(el) }

    end

end