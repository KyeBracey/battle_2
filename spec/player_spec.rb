require 'player'

describe Player do
  subject(:player) { described_class.new('Jennifer') }

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq 'Jennifer'
    end
  end
end
