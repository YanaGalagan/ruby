# frozen_string_literal: true
require_relative 'student_list_base'
require 'yaml'

class StudentListYaml<StudentListBase
  public_class_method :new

  protected

  def string_to_list(str)
    YAML.safe_load(str).map {|h| h.transform_keys(&:to_sym)}
  end

  def list_to_string(list)
    list.map {
      |h|
      h.transform_keys(&:to_s)}.to_yaml
  end
end
