# frozen_string_literal: true
require_relative 'student'

class DataTable
  def initialize(table)
    self.table = table
  end
  private
  attr_accessor :table



end