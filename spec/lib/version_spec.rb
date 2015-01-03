require 'spec_helper'

describe DrawErd do
  describe ".version" do
    it "returns #{DrawErd::VERSION}" do
      expect(DrawErd::VERSION).to eq(DrawErd::VERSION)
    end
  end
end
