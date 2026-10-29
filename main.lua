

local currentLine = 1
local dialogue = require("scripts.test")
local characters = require("characters")
local textColor = {1,1,1,1}
local dialogueFont

function love.load()
    love.window.setTitle("Ren'Lua")
    love.window.setMode(1280, 720)
    dialogueFont = love.graphics.newFont("fonts/DejaVuSans.ttf", 24)
end

-- Окно текста
function love.draw()
    local line = dialogue[currentLine]
    local character = characters[line.speaker]
    love.graphics.setFont(dialogueFont)
    love.graphics.setColor(1,0,0,0.8)
    love.graphics.rectangle("fill", 0, 540, 1280, 180)

    -- Вывод имени персонажа
    love.graphics.setColor(unpack(character.color))
    love.graphics.print(character.name, 40, 560 )
    -- Вывод реплики
    love.graphics.setColor(unpack(textColor))
    love.graphics.printf(line.text, 40, 590, 1200, "left")
end

function love.keypressed(key)
    if key == "space" then
        -- Ебанутая логика
        currentLine = currentLine + 1
        if currentLine > #dialogue then
            currentLine = 1
        end
    end
    if key == "escape" then
        love.event.quit()
    end
end