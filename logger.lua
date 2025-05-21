local M = {}

-- values with '1;', beyond having a color, are also bold
local colors = {
    default = "\27[0m",
    red = "\27[1;31m",
    yellow = "\27[1;33m",
    green = "\27[1;32m",
    blue = "\27[1;34m",
}

function M.log(level, message)
    -- by default, does not use any color
    local color = colors.default

    -- changes the color based on the log level
    if level == "INFO" then
        color = colors.blue
    elseif level == "SUCCESS" then
        color = colors.green
    elseif level == "WARN" then
        color = colors.yellow
    elseif level == "ERROR" then
        color = colors.red
    end

    -- print the text formatted into: [ LEVEL ] Messsage here
    print(string.format("%s[ %s ] %s%s", color, level, colors.default, message))
end

return M
