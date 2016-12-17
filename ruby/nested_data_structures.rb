Hotel_Madness = {
	top_floor: {
		vip: {
			rich_guy: "50 Cent",
			owner: "Billy the kid"

			},
		service: [
				"open bar",
				"room cleaning",
				"clothes washed",
				"bags carried",
				"food"
			]
	},
	middle_floor: {
		average_guest: {
			guest1: "Business Guy",
			guest2: "Family",
			guest3: "kids partying"
			},
		type_of_service: [
				"room_cleaning",
				"food",
				"bags carried"
			]
	},
	bottom_floor: {
		front_Desk: {
				greeter: "Angelica",
				doorman: "Roger",
				bag_boy: "Sammy"
			},
		jobs: [
				"Greeters",
				"Doormen",
				"Bag Carrier"
			]
	},
	basement: {
		staff: {
			maid: "Sarah",
			waiter: "Timmy",
			dish_washer: "Jose",
			chef: "Luise"

			},
		jobs: [
			"Clean",
			"Serve",
			"Wash",
			"Cook"

		]

	}
}
p Hotel_Madness[:bottom_floor][:jobs].last