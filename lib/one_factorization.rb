require 'one_factorization/version'
require 'one_factorization/array'

module OneFactorization
  class InvalidLengthError < StandardError
    attr_reader :result
    def initialize result
      @result = result
      @message = 'cannot 1-factorize an array with an odd number of elements'
    end
  end
end
