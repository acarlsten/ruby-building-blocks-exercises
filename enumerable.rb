# A module that does things
module Enumerable
  # A poor implementation of the .each method
    def my_each
      return self unless block_given?
      for i in self
        yield(i)
      end
    end
    # Same here
    def my_each_with_index
      return self unless block_given?

    end
end

x = ["what", "the", "fuck"]
