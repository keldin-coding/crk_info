local facilities = (import "facilities.jsonnet").references;

local goods_map = {
  acorn_lamp: {
    label: "Acorn Lamp",
    facility: facilities.carpenter,
  },
  burger: {
    label: "Bear Jelly Burger",
    facility: facilities.diner,
  },
  crown: {
    label: "Bear Jelly Crown",
    facility: facilities.jewelry,
  },
  flower_bouquet: {
    label: "Bell-Flower Bouquet",
    facility: facilities.flowers,
  },
  toy: {
    label: "Bear Jelly Toy",
    facility: facilities.toy_store,
  },
  candy_bouquet: {
    label: "Candy Bouquet",
    facility: facilities.flowers,
  },
  pasta: {
    label: "Candy Pasta",
    facility: facilities.diner,
  },
  cream: {
    label: "Cream",
    facility: facilities.dairy,
  },
  red_jam: {
    label: "Sweet Jelly Jam (red)",
    facility: facilities.jammery,
  },
  pie: {
    label: "Tart Jampie",
    facility: facilities.bakery,
  },
  pillow: {
    label: "Cloud Pillow",
    facility: facilities.toy_store,
  },
  pinecone: {
    label: "Pinecone Birdy Toy",
    facility: facilities.carpenter,
  },
  biscuit_planter: {
    label: "Biscuit planter",
    facility: facilities.workshop,
  },
  boba: {
    label: "Bubbly Boba",
    facility: facilities.cafe,
  },
  doughnut: {
    label: "Glazed Donuts",
    facility: facilities.bakery,
  },
  glass: {
    label: "Shiny Glass",
    facility: facilities.workshop,
  },
  stew: {
    label: "Hot Jelly Stew",
    facility: facilities.diner,
  },
  butter: {
    label: "Butter",
    facility: facilities.dairy,
  },
  candy_flower: {
    label: "Candy Flower",
    facility: facilities.flowers,
  },
  candy_saw: {
    label: "Candy Saw",
    facility: facilities.smithy,
  },
  bowl: {
    label: "Colorful Bowl",
    facility: facilities.workshop,
  },
  pom_jam: {
    label: "Pomegranate Jam",
    facility: facilities.jammery,
  },
  latte: {
    label: "Jellybean Latte",
    facility: facilities.cafe,
  },
  root_beer: {
    label: "Cream Root Beer",
    facility: facilities.barrel_inn,
  },
  happy_planter: {
    label: "Happy Planter",
    facility: facilities.flowers,
  },
  cuckoo_clock: {
    label: "Cuckoo clock",
    facility: facilities.carpenter,
  },
  toffee_jam: {
    label: "Toffee Jam (yellow)",
    facility: facilities.jammery,
  },
  shovel: {
    label: "Diggy Shovel",
    facility: facilities.smithy,
  },
  tongs: {
    label: "Enchanted Tongs",
    facility: facilities.smithy,
  },
  stake: {
    label: "Enchanted stake",
    facility: facilities.smithy,
  },
  fancy_meal: {
    label: "Fancy Jellybean Meal",
    facility: facilities.diner,
  },
  lollipop_basket: {
    label: "Lollipop Flower Basket",
    facility: facilities.flowers,
  },
  rye: {
    label: "Hearty Rye",
    facility: facilities.bakery,
  },
  blue_jam: {
    label: "Jellybean Jam (blue)",
    facility: facilities.jammery,
  },
  castella: {
    label: "Fluffy Castella",
    facility: facilities.bakery,
  },
  omurice: {
    label: "Fluffy Omurice",
    facility: facilities.diner,
  },
  focaccia: {
    label: "Gingko Focaccia",
    facility: facilities.bakery,
  },
  glazed_ring: {
    label: "Glazed Ring",
    facility: facilities.jewelry,
  },
  bead: {
    label: "Gleamy Bead",
    facility: facilities.workshop,
  },
  yogurt_wreath: {
    label: "Glittering Yogurt Wreath",
    facility: facilities.flowers,
  },
  deluxe_pizza: {
    label: "Jelly Deluxe Pizza",
    facility: facilities.diner,
  },
  croissant: {
    label: "Golden Croissant",
    facility: facilities.bakery,
  },
  cheese: {
    label: "Homemade Cheese",
    facility: facilities.dairy,
  },
  hammer: {
    label: "Indestructible Glazed Hammer",
    facility: facilities.smithy,
  },
  party_cake: {
    label: "Party Cake",
    facility: facilities.maison,
  },
  pitaya_dragon: {
    label: "Pitaya Dragon Toy",
    facility: facilities.toy_store,
  },
  redberry_juice: {
    label: "Redberry Juice",
    facility: facilities.barrel_inn,
  },
  sweetberry_juice: {
    label: "Sweetberry Juice",
    facility: facilities.cafe,
  },
  axe: {
    label: "Robust Axe",
    facility: facilities.smithy,
  },
  brooch: {
    label: "Rubyberry Brooch",
    facility: facilities.jewelry,
  },
  dreamcatcher: {
    label: "Swan Feather Dreamcatcher",
    facility: facilities.carpenter,
  },
  sparkleberry_jam: {
    label: "Sparkleberry Jam",
    facility: facilities.jammery,
  },
  muffin: {
    label: "Spooky Muffin",
    facility: facilities.maison,
  },
  strawberry_cake: {
    label: "Strawberry Cake",
    facility: facilities.maison,
  },
  pickaxe: {
    label: "Tempered pickaxe",
    facility: facilities.smithy,
  },
  root_bottle: {
    label: "Vintage Root Bottle",
    facility: facilities.barrel_inn,
  },
};



std.mapWithKey(function(key, data)
  assert std.objectHas(data, "label"): "label not present for %s" % key;
  assert std.objectHas(data, "facility"): "facility not present for %s" % key;
  data + {id: key},
goods_map)
