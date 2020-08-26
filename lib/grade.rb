# frozen_string_literal: true

def grade(string)
  array = string.split(',')
  hash = array.group_by { |num| num }
  hash.map { |k, v| "#{k}: #{v.count}" }.join
end
