local player = {}

player.name = ""
player.description = ""
player.maxHealth = 10
player.health = 10
player.attack = 6
player.defense = 4
player.speed = 3

function player.getProgressBar(attribute)
    local fullChar = "⬜ "
    local emptyChar = "⬛ "

    local result = ""
    for i = 1, 10, 1 do
        result = result .. (i <= attribute and fullChar or emptyChar)
    end
    return result
end

function player.printPlayer()

    print("=================================================")
    print("| Nome: " .. player.name)
    print("| ")
    print("| Descrição: " .. player.description)
    print("| ")
    print("| Atributos: ")
    print("|     Ataque:      " .. player.getProgressBar(player.attack))
    print("|     Defesa:      " .. player.getProgressBar(player.defense))
    print("|     Vida Máxima: " .. player.getProgressBar(player.maxHealth))
    print("|     Velocidade:  " .. player.getProgressBar(player.speed))
    print("=================================================")
    print()
    print()

end


return player