require "./spec_helper"

describe Enumerable do
  describe "reduce?" do
    it { [1, 2, 3].reduce? { |memo, i| memo + i }.should eq(6) }
    it { [1, 2, 3].reduce?(10) { |memo, i| memo + i }.should eq(16) }

    it "returns nil if empty" do
      ([] of Int32).reduce? { |memo, i| memo + i }.should be_nil
    end

    it "does not raise if empty if there is a memo argument" do
      result = ([] of Int32).reduce?(10) { |memo, i| memo + i }
      result.should eq 10
    end
  end
end
