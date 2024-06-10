local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local M = {}

local function generate_calendar_line(prefix_emoji, postfix_emoji)
  return {
    t("- ( ) " .. prefix_emoji .. " "),
    i(1, "[Start-Hour]"),
    t(":"),
    i(2, "[Start-Minute]"),
    t("-"),
    i(3, "[End-Hour]"),
    t(":"),
    i(4, "[End-Minute]"),
    t(" "),
    t(postfix_emoji),
    t(" "),
    i(5, "[Description]"),
  }
end

M.calendar_entry = s("meeting-entry", generate_calendar_line("📆", "➡️ "))
M.free_time_entry = s("freetime-entry", generate_calendar_line("🕒", "🆓"))
M.focus_time_entry = s("focustime-entry", generate_calendar_line("🔥", "🧠"))

return M
