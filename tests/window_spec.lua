local data = require("aerial.data")
local window = require("aerial.window")

describe("config", function()
  it("cursor above first symbol", function()
    local sym = {
      kind = "Function",
      name = "my_func",
      level = 1,
      lnum = 8,
      end_lnum = 10,
      col = 0,
      end_col = 3,
    }
    local bufdata = data.create()
    bufdata.items = { sym }
    local ret = window.get_symbol_position(bufdata, 1, 0)
    assert.are.same({ lnum = 1, closest_symbol = sym, relative = "above" }, ret)
  end)
  it("cursor below last symbol", function()
    local sym = {
      kind = "Function",
      name = "my_func",
      level = 1,
      lnum = 8,
      end_lnum = 10,
      col = 0,
      end_col = 3,
    }
    local bufdata = data.create()
    bufdata.items = { sym }
    local ret = window.get_symbol_position(bufdata, 12, 0)
    assert.are.same({ lnum = 1, closest_symbol = sym, relative = "below" }, ret)
  end)
  it("cursor between symbols", function()
    local sym = {
      kind = "Function",
      name = "my_func",
      level = 1,
      lnum = 8,
      end_lnum = 10,
      col = 0,
      end_col = 3,
    }
    local sym2 = {
      kind = "Function",
      name = "other_func",
      level = 1,
      lnum = 14,
      end_lnum = 15,
      col = 0,
      end_col = 3,
    }
    local bufdata = data.create()
    bufdata.items = { sym, sym2 }
    local ret = window.get_symbol_position(bufdata, 12, 0)
    assert.are.same({ lnum = 1, closest_symbol = sym, relative = "below" }, ret)
  end)
  it("cursor exactly on symbol", function()
    local sym = {
      kind = "Function",
      name = "my_func",
      level = 1,
      lnum = 8,
      end_lnum = 10,
      col = 0,
      end_col = 3,
    }
    local bufdata = data.create()
    bufdata.items = { sym }
    local ret = window.get_symbol_position(bufdata, 8, 0)
    assert.are.same({ lnum = 1, closest_symbol = sym, exact_symbol = sym, relative = "exact" }, ret)
  end)
  it("cursor on parent symbol", function()
    local sym = {
      kind = "Function",
      name = "my_func",
      level = 2,
      lnum = 8,
      end_lnum = 10,
      col = 0,
      end_col = 3,
    }
    local parent = {
      kind = "Class",
      name = "my_class",
      level = 1,
      lnum = 6,
      end_lnum = 12,
      col = 0,
      end_col = 3,
      children = { sym },
    }
    sym.parent = parent
    local bufdata = data.create()
    bufdata.items = { parent }
    local ret = window.get_symbol_position(bufdata, 11, 0)
    assert.are.same(
      { lnum = 2, closest_symbol = sym, exact_symbol = parent, relative = "below" },
      ret
    )
  end)
end)
