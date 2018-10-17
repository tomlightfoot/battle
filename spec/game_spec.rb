require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'damages a player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player1)
    end
  end

  describe '#players' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end

    it 'retrieves the second player' do
      expect(game.player_2).to eq player2
    end
  end

  describe '#turns' do
    it "shows the first turn to be player1's" do
      expect(game.current_turn).to eq player1
    end

    it "show the second turn to be player2" do
      game.switch_turn
      expect(game.current_turn).to eq player2
    end
  end
end
