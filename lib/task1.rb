class Array

        def insect
            sum = 0
            self.each do |elem|
                sum += yield(sum, elem)
            end
           puts sum
         end
   end


  a=[1,2,3]
  puts a.insect { |result, element| result + element }




