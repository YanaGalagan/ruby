# frozen_string_literal: true
require_relative 'student_list_base'
require 'json'

class StudentListTxt < StudentListBase
  public_class_method :new

  protected

  def string_to_list(str)
    to_hash(str.split("\n"))
  end

  def list_to_string(list)
    to_string(list)
  end

  private
  def to_hash( list_strings)
    list_hashes = []
    list_strings.each do
      |str|
      h = {}
      str.split(',').each do |atr|
        key, value = atr.split(':').map(&:strip)
        h[key.to_sym] = value
      end
      list_hashes << h
    end
    list_hashes
  end

  def to_string (hashes)
    str = hashes.map do
      |h|
      h.map{
        |key, value|
        "#{key}: #{value.inspect}"
      }.join(",")
    end
    str.join("\n")
  end
end