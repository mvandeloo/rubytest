class Array

        def insect
            sum = first
            self[1..-1].each do |elem|
                sum = yield(sum, elem)
            end
           sum
         end
   end


  a=[1,2,3]
  puts a.insect { |result, element| result + element }

  