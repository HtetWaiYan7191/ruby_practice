require_relative "../calculator"

describe Calculator do
    context "given two numbers" do
        it "can add the numbers using the add method" do
            calc = Calculator.new
            x = 1
            y = 2 
            expect(calc.add(x,y)).to eq(3)
        end

        it"can multiply numbers using the multiply method" do
            calc = Calculator.new
            x = 1 
            y = 2
            expect(calc.multiply(x,y)).to eq(2)
        end

        it "can substract two numbers using the subsctract method" do
            calc = Calculator.new
            x = 2 
            y = 1
            expect(calc.substract(x,y)).to eq(1)
        end
    end
end