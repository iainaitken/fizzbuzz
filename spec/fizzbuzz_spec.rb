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
  
  it "returns Fizz when passed a multiple of 3" do
    [3,6,9,12,18].each { |n| expect(fizzbuzz(n)).to eq "Fizz" }
  end

  it "returns Buzz when passed a multiple of 5" do
    [5,10,20].each { |n| expect(fizzbuzz(n)).to eq "Buzz" }
  end
  
  it "returns FizzBuzz when passed a multiple of both 3 and 5" do
    expect(fizzbuzz(15)).to eq "FizzBuzz"
  end
  
  it "returns n if not divisible by 3 or 5" do
    [1,2,4,7,8,11,13,14,16,17,19].each { |n| expect(fizzbuzz(n)).to eq n }
  end
end
