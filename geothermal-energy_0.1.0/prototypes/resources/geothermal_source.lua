local resource_autoplace = require("__core__/lualib/resource-autoplace")

data:extend({
	{
		type = "resource",
		name = "geothermal-source",
		icon = "__geothermal-energy__/graphics/prototypes/resources/geothermal-source-icon.png",
		icon_size = 64,
		icon_mimaps = 4,
		flags = { "placeable-neutral" },
		category = "basic-fluid",
		subgroup = "raw-resource",
		order = "a-b-a",
		infinite = false,
		map_grid = false,
		highlight = true,
		minimum = 100000,
		normal = 250000,
		infinite_depletion_amount = 10,
		resource_patch_search_radius = 10,
		tree_removal_probability = 1,
    	tree_removal_max_distance = 32 * 32,
    	minable = {
    		mining_time = 1,
    		results = {
          {
    			type = "fluid",
          temperature = 165,
    			name = "steam",
    			amount_min = 1,
    			amount_max = 40,
    			probablity = 1,
    		},
    	},
	},
	collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    autoplace = resource_autoplace.resource_autoplace_settings({
      name = "geothermal-source",
      order = "c",
      base_density = 2,
      base_spots_per_km2 = 0.5,
      random_probability = 1 / 50,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1,
      additional_richness = 50000,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
    }),
    stage_counts = { 0 },
    stages = {
      sheet = {
        filename =  "__geothermal-energy__/graphics/prototypes/resources/geothermal-source.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 1,
      },
    },
    map_color = { r = 0.35, g = 0.5, b = 0.75 },
  },
  {
    type = "autoplace-control",
    name = "geothermal-source",
    localised_name = { "", "[entity=geothermal-source] ", { "autoplace-control-names.geothermal-source" } },
    order = "k-b",
    richness = true,
    category = "resource",
  },
  {
    type = "noise-layer",
    name = "geothermal-source",
  },
})