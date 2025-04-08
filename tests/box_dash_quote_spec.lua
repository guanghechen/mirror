---@module 'luassert'

local util = require('tests.util')

describe('box_dash_quote.md', function()
    it('default', function()
        util.setup.file('demo/box_dash_quote.md')

        local marks, row = util.marks(), util.row()

        marks:add(row:get(), nil, 0, nil, util.heading.sign(1))
        marks:add(row:get(), row:get(), 0, 1, util.heading.icon(1))
        marks:add(row:get(), row:inc(), 0, 0, util.heading.bg(1))

        marks:add(row:inc(), row:get(), 0, 2, util.conceal())
        marks:add(row:get(), row:get(), 2, 5, {
            virt_text = { { '󰄱 ', 'RmUnchecked' }, { ' ', 'Normal' } },
            virt_text_pos = 'overlay',
        })
        marks:add(row:get(), row:get(), 5, 6, util.conceal())
        marks:add(row:inc(), row:get(), 0, 2, util.conceal())
        marks:add(row:get(), row:get(), 2, 5, {
            virt_text = { { '󰱒 ', 'RmChecked' }, { ' ', 'Normal' } },
            virt_text_pos = 'overlay',
        })
        marks:add(row:get(), row:get(), 5, 6, util.conceal())
        marks:add(row:inc(), row:get(), 0, 2, util.conceal())
        marks:add(row:get(), row:get(), 2, 6, {
            virt_text = { { '󰥔 ', 'RmTodo' } },
            virt_text_pos = 'overlay',
        })
        marks:add(row:get(), nil, 6, nil, {
            virt_text = { { ' ', 'Normal' } },
            virt_text_pos = 'inline',
        })
        marks:add(row:inc(), row:get(), 0, 2, util.bullet(1))

        marks:add(row:inc(2), nil, 0, nil, {
            virt_text = { { string.rep('─', vim.o.columns), 'RmDash' } },
            virt_text_pos = 'overlay',
        })

        marks:add(row:inc(2), row:get(), 0, 4, util.quote('  %s ', 'RmQuote'))
        marks:add(row:inc(), row:get(), 0, 4, util.quote('  %s ', 'RmQuote'))

        util.assert_view(marks, {
            '󰫎 󰲡 Checkbox / Dash / Quote',
            '',
            '  󰄱  Unchecked Checkbox',
            '  󰱒  Checked Checkbox',
            '  󰥔  Todo Checkbox',
            '  ● Regular List Item',
            '',
            '  ──────────────────────────────────────────────────────────────────────────────',
            '',
            '    ▋ Quote line 1',
            '    ▋ Quote line 2',
        })
    end)
end)
