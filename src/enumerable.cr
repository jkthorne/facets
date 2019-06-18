module Enumerable(T)
  # Pulled in from https://github.com/crystal-lang/crystal/pull/4828

  # Similar to `reduce`, but instead of raising when the input is empty,
  # return `nil`
  #
  # ```
  # ([] of Int32).reduce? { |acc, i| acc + i } # => nil
  # ```
  def reduce?
    memo = uninitialized T
    found = false

    each do |elem|
      memo = found ? (yield memo, elem) : elem
      found = true
    end

    found ? memo : nil
  end

  # Similar to `reduce?`, however instead of returning `nil` when the input is empty,
  # return the initial value of the accumulator.
  #
  # ```
  # ([] of Int32).reduce?(10) { |acc, i| acc + i } # => 10
  # ```
  def reduce?(memo)
    each do |elem|
      memo = yield memo, elem
    end
    memo
  end
end
