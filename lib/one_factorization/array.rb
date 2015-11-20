class Array
  def one_factorize
    number_pairs = length / 2
    first, *rest = *self
    result = rest.each_with_index.inject([]) do |set, (person,index)|
      set << (1..number_pairs-1).inject([[first, person]]) do |pairs, offset|
        pairs << [rest[(index-offset)%rest.length], rest[(index+offset)%rest.length]]
      end
    end
    fail OneFactorization::InvalidLengthError.new(result) if length.odd?
    result
  end
end