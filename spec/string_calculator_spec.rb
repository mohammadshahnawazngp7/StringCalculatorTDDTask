require_relative '../app/string_calculator'

RSpec.describe StringCalculator do
	describe ".add" do
		context "with an empty string" do
			it "returns 0" do
				expect(StringCalculator.add("")).to eq(0)
			end
		end

		context "with a single number" do
			it "returns the number itself" do
				expect(StringCalculator.add("1")).to eq(1)
			end
		end

		context "with two numbers" do
			it "returns the sum of the numbers" do
				expect(StringCalculator.add("1,5")).to eq(6)
			end
		end

		context "with multiple numbers" do
			it "returns the sum of all numbers" do
				expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
			end
		end

		context "with new lines between numbers" do
			it "returns the sum of all numbers" do
				expect(StringCalculator.add("1\n2,3")).to eq(6)
			end
		end

		context "with a different delimiter" do
			it "returns the sum of all numbers" do
				expect(StringCalculator.add("//;\n1;2;3")).to eq(6)
			end
		end

		context "with negative numbers" do
			it "throws an exception with the negative numbers" do
				expect { StringCalculator.add("1,-2,3,-4,5") }.to raise_error("Negative numbers not allowed: -2, -4")
			end
		end
	end
end
