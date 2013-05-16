# -*- coding: utf-8 -*-
class EachAndInclude
  # collection : Array of some object
  #   collection.conditions should be Array of Symbol or nil
  # target : finding target (should be Symbol)
  def self.method_foo(collection, target)
    collection.select do |item|
      ! item.conditions or item.conditions.include?(target)
    end
  end
end
