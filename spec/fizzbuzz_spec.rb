require_relative "../lib/fizzbuzz"

describe 'fizzbuzz' do
  it "can be passed a number" do
    expect { fizzbuzz(1) }.to_not raise_error
  end
  
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'Fizz'
  end

  it "returns Buzz when passd 5" do
    expect(fizzbuzz(5)).to eq "Buzz"
  end
  
end
