---Dependecies
local utils = require("utils")
local player = require("players.player")
local treat = require("creatures.treat")

utils.enableUTF8()

---Header
utils.printHeader()


print("Dê um nome ao guerreiro: ")
player.name = io.read()
print()
print("Agora dê uma breve descrição")
player.description = io.read()
print()

---Apresentar Player
player.printPlayer()

local boss = treat

---Apresentando a criatura
utils.printCreature(boss)

---Loop de batalha
while true do

    ---Verifica vida da criatura
    if boss.health <= 0 then
        break
    end
    ---Verifica vida do player
    if player.health <= 0 then
        break
    end
end