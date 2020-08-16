-- alien modules --

data:extend({
	{
		type = "ammo",
		name = "alien-magazine",
		icon = "__alien-module__/graphics/alien-magazine.png",
		icon_size = 32,
		ammo_type = {
			category = "bullet",
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					source_effects = {
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects = {
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{
							type = "damage",
							damage = { amount = 10, type = "physical" }
						}
					}
				}
			}
		},
		magazine_size = 20,
		subgroup = "warfare",
		category = "alien-module",
		order = "ab",
		stack_size = 100
	}
})

for i = 1, 100, 1 do
	data:extend({
		{
			type = "ammo",
			name = "alien-hyper-magazine-" .. i,
			icon = "__alien-module__/graphics/alien-hyper-magazine.png",
			icon_size = 64,
			ammo_type = {
				category = "bullet",
				action = {
					type = "direct",
					action_delivery = {
						type = "instant",
						source_effects = {
							type = "create-explosion",
							entity_name = "explosion-gunshot"
						},
						target_effects = {
							{
								type = "create-entity",
								entity_name = "explosion-hit"
							},
							{
								type = "damage",
								damage = { amount = 5 + 0.2 * i, type = "physical" }
							}
						}
					}
				}
			},
			magazine_size = 20,
			subgroup = "warfare",
			category = "alien-module",
			order = "ac",
			stack_size = 100
		}
	})
end

data:extend({
	{
		type = "ammo",
		name = "alien-ore-magazine",
		icon = "__alien-module__/graphics/alien-ore-magazine.png",
		icon_size = 32,
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{
							type = "damage",
							damage = { amount = 4, type = "physical" }
						}
					}
				}
			}
		},
		magazine_size = 35,
		subgroup = "warfare",
		category = "alien-module",
		order = "aa",
		stack_size = 100
	}
})
