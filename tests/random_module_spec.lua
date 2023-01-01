---@diagnostic disable: undefined-global

describe("Test the `markup-previewer.random` module\n", function()
   it("Test: can the module be required?", function()
      require("markup-previewer.random")
   end)

   it("Test: is the generated string length correct?", function()
      local random = require("markup-previewer.random")
      local length = 16
      local generated_string_length = string.len(random.pseudo.randstr(length))

      assert.are.same(length, generated_string_length)
   end)

   it("Test: is the generated string made only of alphanumeric characters?", function()
      local random = require("markup-previewer.random")
      local length = 16
      local generated_string = random.pseudo.randstr(length)

      assert.is.falsy(string.match(generated_string, "%W"))
   end)
end)