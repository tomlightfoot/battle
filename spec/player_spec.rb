require 'player'

describe Player do
  subject(:player) { described_class.new("Tom") }

  it 'has a name' do
    expect(player.name).to eq "Tom"
  end

  it 'has a default HP' do
    expect(player.hp).to eq described_class::DEFAULT_HP
  end

  it 'attacked decreases HP by 10' do
    player.receive_damage
    expect(player.hp).to eq 90
  end
end
