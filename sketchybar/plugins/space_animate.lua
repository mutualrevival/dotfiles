local name = os.getenv("NAME") or "space.1"
local this_space = tonumber(arg[1]) or 1

-- Get the active workspace from AeroSpace CLI
local handle = io.popen("aerospace list-workspaces --focused --json")
local result = handle:read("*a")
handle:close()

local active_space = nil
if result and #result > 0 then
  local json = require("dkjson") -- We'll need dkjson.lua in plugins folder
  local data, pos, err = json.decode(result, 1, nil)
  if data and #data > 0 then
    active_space = tonumber(data[1].workspace)
  end
end

-- Fallback: no active space found
if not active_space then
  active_space = 1
end

local function set_item(corner_radius, bg_color, label)
  os.execute(string.format(
    'sketchybar --set %s background.corner_radius=%d background.color=%s label="%s"',
    name, corner_radius, bg_color, label
  ))
end

-- Animation steps for active space
local animation_steps = {12, 15, 20, 25, 20, 15, 12}

if this_space == active_space then
  for _, radius in ipairs(animation_steps) do
    set_item(radius, "0xff61afef", "􀀁") -- active icon, blue color
    os.execute("sleep 0.03")
  end
else
  set_item(12, "0xff222222", "􀀀") -- inactive icon, dark background
end
