team = ["Nick", "Daniel", "Serge", "Viktoriia Z", "Volodymyr", "Andrew", "Anna", "Kate", "Viktoriia B"]
roles = ["Druid", "Mage", "Warrior", "Clerik", "Rogue", "Paladin", "Berserk"]
races = ["Orc", "Human", "Elf", "Dwarf", "Kamael", "Vampire", "Undead"]
rolesLen = roles.length()
raceLen = races.length()
party = []

testH = {
    "name" => "Test hash"
}

for name in team
    role = roles[rand(rolesLen)]
    race = races[rand(raceLen)]
    gamer = {
        "name" => name,
        "race" => race,
        "role" => role,
        3.14 => "Pi",
        # testH => "Test"
    }
    party.push(gamer)
end

party2 = party
party2.push("End of array")

puts party
# puts party2

# puts party[0].keys[-1]


