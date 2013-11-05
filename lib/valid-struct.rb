require "valid_struct/version"
require "active_model"

module ValidStruct
  class InvalidError < StandardError; end

  def self.included(klass)
    klass.send(:include, ActiveModel::Validations)
  end

  def initialize(*args)
    super(args)
    raise InvalidError, "Fail" unless valid?
  end
end