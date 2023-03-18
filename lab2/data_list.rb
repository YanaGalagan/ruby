# frozen_string_literal: true

class DataList
  def initialize(objects)
    self.sel_objects = []
    self.list = objects
  end

  def select(number)
    raise ArgumentError, "arg 'number' not Integer" if number.class != Integer
    sel_objects.append(number)
  end

  def get_selected
    list_id=[]
    sel_objects.each do |i|
      list_id.append(list[i].id)
    end
    list_id
  end

  protected
  def get_names

  end

  def get_data

  end
  
  private
  attr_accessor :sel_objects, :list
end
