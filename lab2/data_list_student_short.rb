# frozen_string_literal: true

require_relative 'data_table'

class DataListStudentShort < DataList

  def initialize(objects)
    super(objects)
  end

  def get_names
    ["short_name_initials", "git", "contact"]
  end

  def get_data
    result = []
    id = 0
    list.each do |o|
      elem = []
      elem << id
      # * необходима так как, если нам передадут [1,2,3], то передастся row.push(1,2,3)
      elem.push(*table_fields(o))
      result << elem
      id += 1
    end
    DataTable.new(result)
  end

end
