# -*- coding: utf-8 -*-
class GenerateHash
  def self.hash_from_flat_pairs(pairs)
    Hash[*pairs]
  end

  def self.hash_from_pairs(pairs)
    Hash[*pairs.flatten(1)]
  end

  def self.hash_from_keys_and_values(keys, values)
    Hash[keys.zip(values)]
  end
end
