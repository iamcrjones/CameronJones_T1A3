require_relative '../monster.rb'

describe "Test Monster object" do
    it "should store the attributes of the Monster correctly" do
        name = "Monster"
        moves = {}
        health = 100
        critical_chance = 0.1
        monster = Monster.new(name, health, moves, critical_chance)
        expect(monster.name).to eq(name)
        expect(monster.health).to eq(health)
        expect(monster.moves).to eq(moves)
        expect(monster.critical_chance).to eq(critical_chance)
    end
end
describe "Test monster moves" do
    it "should use moves correctly and monster 2 should have health reduced correctly" do
        monster1 = Monster.new('m1', 100, {'tackle' => 15})
        monster2 = Monster.new('m2', 100, {})
        monster1.use_move('tackle', monster2)
        expect(monster2.health).to eq(85)
    end
end