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
	end
end
