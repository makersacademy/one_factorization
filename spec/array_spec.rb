describe Array do
  subject(:array) { %w{Pablo Dan Andrew Tom Rob Jay Norm Yev} }
  it 'can one-factorize an even array as a graph' do
    results = array.one_factorize
    expect(results).to include [["Pablo", "Dan"], ["Yev", "Andrew"], ["Norm", "Tom"], ["Jay", "Rob"]] 
    expect(results).to include [["Pablo", "Andrew"], ["Dan", "Tom"], ["Yev", "Rob"], ["Norm", "Jay"]]
    expect(results).to include [["Pablo", "Tom"], ["Andrew", "Rob"], ["Dan", "Jay"], ["Yev", "Norm"]]
    expect(results).to include [["Pablo", "Rob"], ["Tom", "Jay"], ["Andrew", "Norm"], ["Dan", "Yev"]]
    expect(results).to include [["Pablo", "Jay"], ["Rob", "Norm"], ["Tom", "Yev"], ["Andrew", "Dan"]]
    expect(results).to include [["Pablo", "Norm"], ["Jay", "Yev"], ["Rob", "Dan"], ["Tom", "Andrew"]]
    expect(results).to include [["Pablo", "Yev"], ["Norm", "Dan"], ["Jay", "Andrew"], ["Rob", "Tom"]]
  end
  it 'creates the correct size of one-factorization' do
    results = array.one_factorize
    expect(results.length).to eq 7
  end
  context 'odd length array' do
    subject(:array) { %w{Pablo Dan Andrew Tom Rob Jay Norm} }
    it 'raises an exception' do
      expect { array.one_factorize }.to raise_error OneFactorization::InvalidLengthError
    end
  end
end
