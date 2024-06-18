return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")
    local r = require("r35.snippets.norg_snippets")
    ls.add_snippets("norg", {
      r.calendar_entry,
      r.free_time_entry,
      r.focus_time_entry,
      r.jira_ticket,
      r.ticket_notes,
    })
  end,
}
