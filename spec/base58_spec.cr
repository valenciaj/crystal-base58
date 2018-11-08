require "./spec_helper"

describe Base58 do

  it "Must be string" do
    Base58.random(0).class.should eq(String)
  end

  it "Must be a 32 characters sized string" do
    Base58.random(32).size.should eq(32)
  end

  it "Must be a 64 characters sized string" do
    Base58.random(64).size.should eq(64)
  end

  it "Must be a completly random string" do
    Base58.random(32).should_not eq(Base58.random(32))
  end
end
