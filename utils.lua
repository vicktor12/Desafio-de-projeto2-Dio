local utils = {}

function utils.enableUTF8()
    os.execute("chcp 65001")
end

function utils.printHeader()
---Header
print([[
    ========================================================
    
                  />_________________________________
         [########[]_________________________________>
                  \>
    
          ------------------------------------------
                ⚔️  Simulador de Batalha  ⚔️
    
    =========================================================
    
              Pegue sua arma e venha para a luta!
    ]])

end

function utils.getProgressBar(attribute)
    local fullChar = "⬜ "
    local emptyChar = "⬛ "

    local result = ""
    for i = 1, 10, 1 do
        -- if i <= attribute then
        --     result = result .. fullChar
        -- else
        --     result = result .. emptyChar
        -- end

        result = result .. (i <= attribute and fullChar or emptyChar)
    end
    return result
end


function utils.printCreature(creature)

local healthRate = math.floor((creature.health / creature.maxHealth) * 10)

print("| " .. creature.name)
print("| ")
print("| " .. creature.description)
print("| ")
print("| Atributos: ")
print("|     Ataque:     " .. utils.getProgressBar(creature.attack))
print("|     Defesa:     " .. utils.getProgressBar(creature.defense))
print("|     Vida:       " .. utils.getProgressBar(healthRate))
print("|     Velocidade: " .. utils.getProgressBar(creature.speed))

end



return utils