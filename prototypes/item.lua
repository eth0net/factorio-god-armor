local godArmor = table.deepcopy(data.raw.armor["heavy-armor"])

godArmor.name = "god-armor"

godArmor.icons = {
  {
    icon = godArmor.icon,
    tint = {r = 1, g = 1, b = 1, a = 0.3}
  }
}

godArmor.resistances = {
  {type = "physical", decrease = 0, percent = 100},
  {type = "explosion", decrease = 0, percent = 100},
  {type = "acid", decrease = 0, percent = 100},
  {type = "fire", decrease = 0, percent = 100}
}

local recipe = table.deepcopy(data.raw.recipe["heavy-armor"])

recipe.enabled = true
recipe.name = "god-armor"

recipe.ingredients = {
  {"copper-plate", 200},
  {"steel-plate", 50},
  {"uranium-fuel-cell", 1}
}

recipe.ingredients = {
  {"copper-plate", 1},
}
