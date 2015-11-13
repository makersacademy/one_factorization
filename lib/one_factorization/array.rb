class Array
  def one_factorize
    number_pairs = length / 2
    set = []
    first, *rest = *self
    rest.each_with_index do |person, index| 
      pairs = []
      pairs << [first, person]
      (1..number_pairs-1).each do |offset|
        pairs << [rest[(index-offset)%rest.length], rest[(index+offset)%rest.length]]
      end
      set << pairs
    end
    fail OneFactorization::InvalidLengthError.new(set) if length.odd?
    set
  end
end