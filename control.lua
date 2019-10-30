-- check if a player has god armor
function hasGodArmor(player)
  local inv = player.get_inventory(defines.inventory.character_armor)
  local godArmor = inv.get_item_count("god-armor")
  return godArmor >= 1 and true or false
end

-- apply godly powers to the player
function godArmorPowers(player)
  -- create fire
  player.surface.create_entity {
    name = "fire-flame",
    position = player.position,
    force = "neutral"
  }
end

-- event every tick
script.on_event(
  {defines.events.on_tick},
  function(e)
    -- restrict it to every 30th tick, so twice every second
    if e.tick % 30 == 0 then
      -- loop over players
      for i, player in ipairs(game.connected_players) do
        -- restrict to those with god armor
        if player.character and hasGodArmor(player) then
          -- apply their god powers
          godArmorPowers(player)
        end
      end
    end
  end
)
