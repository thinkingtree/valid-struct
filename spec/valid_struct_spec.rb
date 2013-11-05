require 'spec_helper'

describe ValidStruct do
  it "should validate" do
    expect { TestValidStruct.new }.to raise_error(ValidStruct::InvalidError)
  end
end