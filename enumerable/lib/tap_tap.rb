# -*- coding: utf-8 -*-

require 'generate_hash'

class TapTap
  BIZZARE_CHARACTERS = {
    phantom_blood:        %w[Jonathan Speedwagon Dio],
    battle_tendency:      %w[Joseph Caesar Kars],
    stardust_crusaders:   %w[Jotaro Joseph Avdol Kakyoin Polnareff Iggy Dio],
    diamond_is_not_crash: %w[Josuke Koichi Okuyasu Kira],
    golden_wind:          %w[Giorno Bucchellati Narancia Mista Abbachio Trish Fugo Diavolo],
    stone_ocean:          %w[Jolyne Hermes Emporio FF Anasui Weather Pucci],
    steel_ball_run:       %w[Gyro Johnny Lucy Valentine],
    jojolion:             %w[Josuke Yasuho Kira],
  }

  def self.method_foo(collection)
    GenerateHash.hash_from_keys_and_values(collection.keys.map(&:to_sym),
                                           collection.values)
  end

  def self.method_bar(episodes)
    pairs = episodes.map do |episode|
      [ episode, BIZZARE_CHARACTERS[episode].map(&:downcase).map(&:to_sym) ]
    end

    GenerateHash.hash_from_pairs(pairs)
  end
end
