local M = {}
local pseudo = {}

--- Return a pseudo-random alphanumeric string of the given length.
---@param length integer
---@return string
local function pseudo_randstr(length)
   math.randomseed(os.time())

   local charset = {
      [0] = function()
         return string.char(math.random(48, 57))
      end,
      [1] = function()
         return string.char(math.random(65, 90))
      end,
      [2] = function()
         return string.char(math.random(97, 122))
      end,
   }

   local str = {}

   for _ = 1, length do
      table.insert(str, charset[math.random(0, 2)]())
   end

   return table.concat(str)
end

pseudo.randstr = pseudo_randstr

M.pseudo = pseudo

return M