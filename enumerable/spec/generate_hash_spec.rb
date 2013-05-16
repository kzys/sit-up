# -*- coding: utf-8 -*-
require 'spec_helper'
describe GenerateHash do
  let(:expected_hash) do
    { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}
  end

  context 'when array that key, value, key, value... was given' do
    subject { GenerateHash.hash_from_flat_pairs ['key1', 'value1', 'key2', 'value2', 'key3', 'value3'] }
    it { should == expected_hash }
  end

  context 'when array that pairs of key and value was given' do
    subject { GenerateHash.hash_from_pairs [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']] }
    it { should == expected_hash }
  end

  context 'when array of keys and array of values was given' do
    subject { GenerateHash.hash_from_keys_and_values ['key1', 'key2', 'key3'], ['value1', 'value2', 'value3'] }
    it { should == expected_hash }
  end
end
