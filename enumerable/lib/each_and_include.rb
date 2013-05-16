# -*- coding: utf-8 -*-
class EachAndInclude
  # collection : Array of some object
  #   collection.conditions should be Array of Symbol or nil
  # target : finding target (should be Symbol)
  #
  # TODO 2013-05-16 kazuyoshi@ The "conditions" should return [] instead of nil
  def self.select_if_condition_includes(collection, target)
    collection.select do |item|
      ! item.conditions or item.conditions.include?(target)
    end
  end
end
