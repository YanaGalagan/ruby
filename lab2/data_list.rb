# frozen_string_literal: true

class DataList
  def initialize(objects)
    self.new_objects = []
    self.list = objects
  end

  def select(number)
    raise ArgumentError, "arg 'number' not Integer" if number.class != Integer
    new_objects.append(number)
  end

  private
  attr_accessor :new_objects, :list
end
