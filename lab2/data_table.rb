# frozen_string_literal: true
require_relative 'student'

class DataTable

  attr_reader  :str_count, :st_count

  def initialize(table)
    self.str_count = table.length

    max_c=0
    table.each do |el|
      max_c = el.length if el.size > max_c
    end
    self.st_count = max_c
    self.table = table
  end


  def get_elem(str, st)
    return nil if str>=str_count
    return nil if st>=st_count
    table[str][st]
  end



  private
  attr_accessor :table
  attr_writer :rows_count, :cols_count

end