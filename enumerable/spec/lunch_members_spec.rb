# -*- coding: utf-8 -*-
require 'spec_helper'

describe LunchMembers do
  describe 'shuffle' do
    let(:all_members) { %w[foo bar baz hoge piyo fuga moge gori] }
    subject { LunchMembers.shuffle(all_members) }
    it 'returns 2 divided teams' do
      subject.count.should == 2

      members = []
      subject.each do |group|
        group.count.should <= 4
        group.each do |member|
          members << member
        end
      end
      members.sort.should == all_members.sort
    end
  end

  describe 'shuffle should be random' do
    members = %w[foo bar baz hoge piyo fuga moge gori]

    same = 0

    100.times do
      (a1, b1) = LunchMembers.shuffle(members)
      (a2, b2) = LunchMembers.shuffle(members)

      if a1 == a2 and b1 == b2
        same += 1
      end
    end

    same.should < 50
  end
end
