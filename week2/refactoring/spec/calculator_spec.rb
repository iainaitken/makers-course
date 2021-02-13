require 'calculator'

RSpec.describe Calculator do
  it 'addsup' do
    expect { Calculator.new.add(2, 5) }.to output(/The result is: 7/).to_stdout
  end
end
