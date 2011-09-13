module ClosestFibonacci
  module Fibonacci
    module InstanceMethods
      def fibonacci
        current_number, next_number, full_sequence = 0, 1, []
        until current_number > self.to_i
          full_sequence << current_number
          current_number, next_number = next_number, current_number + next_number
        end
        full_sequence
      end

      def closest_fibonacci
        self.fibonacci[-1]
      end
    end
  end
end
