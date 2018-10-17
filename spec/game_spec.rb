require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#players' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#players' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player2
    end
  end
end
