local goods_map = {
  acorn_lamp: {
    label: "Acorn Lamp",
  },
  burger: {
    label: "Bear Jelly Burger",
  },
  crown: {
    label: "Bear Jelly Crown",
  },
  flower_bouquet: {
    label: "Bell-Flower Bouquet",
  },
  toy: {
    label: "Bear Jelly Toy",
  },
  candy_bouquet: {
    label: "Candy Bouquet",
  },
  pasta: {
    label: "Candy Pasta",
  },
  cream: {
    label: "Cream",
  },
  red_jam: {
    label: "Sweet Jelly Jam (red)",
  },
  pie: {
    label: "Tart Jampie",
  },
  pillow: {
    label: "Cloud Pillow",
  },
  pinecone: {
    label: "Pinecone Birdy Toy",
  },
  biscuit_planter: {
    label: "Biscuit planter",
  },
  boba: {
    label: "Bubbly Boba",
  },
  doughnut: {
    label: "Glazed Donuts",
  },
  glass: {
    label: "Shiny Glass",
  },
  stew: {
    label: "Hot Jelly Stew",
  },
  butter: {
    label: "Butter",
  },
  candy_flower: {
    label: "Candy Flower",
  },
  candy_saw: {
    label: "Candy Saw",
  },
  bowl: {
    label: "Colorful Bowl",
  },
  pom_jam: {
    label: "Pomegranate Jam",
  },
  latte: {
    label: "Jellybean Latte",
  },
  root_beer: {
    label: "Cream Root Beer",
  },
  happy_planter: {
    label: "Happy Planter",
  },
  cuckoo_clock: {
    label: "Cuckoo clock",
  },
  toffee_jam: {
    label: "Toffee Jam (yellow)",
  },
  shovel: {
    label: "Diggy Shovel",
  },
  tongs: {
    label: "Enchanted Tongs",
  },
  stake: {
    label: "Enchanted stake",
  },
  fancy_meal: {
    label: "Fancy Jellybean Meal",
  },
  lollipop_basket: {
    label: "Lollipop Flower Basket",
  },
  rye: {
    label: "Hearty Rye"
  },
  blue_jam: {
    label: "Jellybean Jam (blue)"
  },
  castella: {
    label: "Fluffy Castella"
  },
  omurice: {
    label: "Fluffy Omurice"
  },
  focaccia: {
    label: "Gingko Focaccia"
  },
  glazed_ring: {
    label: "Glazed Ring",
  },
  bead: {
    label: "Gleamy Bead",
  },
  yogurt_wreath: {
    label: "Glittering Yogurt Wreath",
  },
  deluxe_pizza: {
    label: "Jelly Deluxe Pizza",
  },
  croissant: {
    label: "Golden Croissant",
  },
  cheese: {
    label: "Homemade Cheese",
  },
  hammer: {
    label: "Indestructible Glazed Hammer",
  },
  party_cake: {
    label: "Party Cake",
  },
  pitaya_dragon: {
    label: "Pitaya Dragon Toy",
  },
  redberry_juice: {
    label: "Redberry Juice",
  },
  axe: {
    label: "Robust Axe",
  },
  brooch: {
    label: "Rubyberry Brooch",
  },
  dreamcatcher: {
    label: "Swan Feather Dreamcatcher",
  },
  sparkleberry_jam: {
    label: "Sparkleberry Jam",
  },
  muffin: {
    label: "Spooky Muffin",
  },
  strawberry_cake: {
    label: "Strawberry Cake",
  },
  pickaxe: {
    label: "Tempered pickaxe",
  },
  root_bottle: {
    label: "Vintage Root Bottle",
  },
};

// Don't ask why this one is done differently
std.mapWithKey(function(key, data) data + {id: key}, goods_map)
