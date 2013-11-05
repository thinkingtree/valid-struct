class TestValidStruct < Struct.new(:field1)
  include ValidStruct

  validates_presence_of :field1
end
