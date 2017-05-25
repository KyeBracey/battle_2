require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe '#attack' do
    it 'attacks a player' do
      expect(player_1).to receive(:reduce_hit_points)
      game.attack(player_1)
    end
  end
end
