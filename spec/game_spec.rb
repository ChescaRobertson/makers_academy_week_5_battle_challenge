require 'player'
require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'allows player to perform attack' do
      expect(player_2).to receive(:add_damage) 
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'starts as player 1 turn' do
      expect(game.current_turn).to eq player_1
    end
  end
  
  describe '#swtich_turn' do
    it 'switches the players turn' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end

end 