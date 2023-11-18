---Dependecies
local utils = require("utils")
local player = require("definitions.player")
local treat = require("definitions.treat")

utils.enableUTF8()

---Header
utils.printHeader()


---Definição do jogador
-- print(string.format("A vida do jogador é %d/%d", player.health, player.maxHealth))

local boss = treat

---Apresentando a criatura
utils.printCreature(boss)