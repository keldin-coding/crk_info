local materials = import "raw_materials.jsonnet";
local goods = import "goods.jsonnet";

local requirements = [
  {
    product: goods.acorn_lamp.id,
    requires: [
      {item: materials.wood.id, count: 12},
      {item: materials.berry.id, count: 3},
    ],
  },
  {
    product: goods.burger.id,
    requires: [
      {item: materials.jellybean.id, count: 10},
      {item: goods.pie.id, count: 1},
    ],
  },
  {
    product: goods.crown.id,
    requires: [
      {item: materials.wool.id, count: 3},
      {item: goods.flower_bouquet.id, count: 1},
    ],
  },
  {
    product: goods.flower_bouquet.id,
    requires: [
      {item: materials.jellybean.id, count: 20},
      {item: goods.pillow.id, count: 2},
    ],
  },
  {
    product: goods.toy.id,
    requires: [
      {item: materials.wool.id, count: 1},
      {item: goods.candy_bouquet.id, count: 2},
    ],
  },
  {
    product: goods.candy_bouquet.id,
    requires: [
      {item: materials.berry.id, count: 5},
      {item: goods.pasta.id, count: 1},
    ],
  },
  {
    product: goods.pasta.id,
    requires: [
      {item: materials.flour.id, count: 7},
      {item: goods.cream.id, count: 1},
    ],
  },
  {
    product: goods.cream.id,
    requires: [
      {item: materials.milk.id, count: 2},
      {item: goods.red_jam.id, count: 1},
    ],
  },
  {
    product: goods.red_jam.id,
    requires: [
      {item: materials.jellybean.id, count: 6},
    ],
  },
  {
    product: goods.pie.id,
    requires: [
      {item: materials.jellybean.id, count: 6},
      {item: materials.flour.id, count: 3},
    ],
  },
  {
    product: goods.pillow.id,
    requires: [
      {item: materials.flour.id, count: 8},
      {item: materials.wool.id, count: 1},
    ],
  },
  {
    product: goods.biscuit_planter.id,
    requires: [
      {item: materials.flour.id, count: 4},
      {item: goods.pinecone.id, count: 2},
    ],
  },
  {
    product: goods.pinecone.id,
    requires: [
      {item: materials.wood.id, count: 6},
    ],
  },
  {
    product: goods.boba.id,
    requires: [
      {item: goods.doughnut.id, count: 1},
      {item: materials.wool.id, count: 1},
    ],
  },
  {
    product: goods.doughnut.id,
    requires: [
      {item: goods.glass.id, count: 1},
      {item: materials.flour.id, count: 5},
    ],
  },
  {
    product: goods.glass.id,
    requires: [
      {item: materials.sugar.id, count: 12},
      {item: goods.stew.id, count: 1},
    ],
  },
  {
    product: goods.stew.id,
    requires: [
      {item: materials.jellybean.id, count: 4},
      {item: materials.berry.id, count: 1},
    ],
  },
  {
    product: goods.butter.id,
    requires: [
      {item: materials.sugar.id, count: 15},
      {item: materials.milk.id, count: 5},
    ],
  },
  {
    product: goods.candy_flower.id,
    requires: [
      {item: materials.berry.id, count: 2},
      {item: goods.biscuit_planter.id, count: 1},
    ],
  },
  {
    product: goods.candy_saw.id,
    requires: [
      {item: materials.wood.id, count: 6},
      {item: materials.sugar.id, count: 5},
    ],
  },
  {
    product: goods.bowl.id,
    requires: [
      {item: materials.sugar.id, count: 24},
      {item: goods.pom_jam.id, count: 2},
    ],
  },
  {
    product: goods.pom_jam.id,
    requires: [
      {item: materials.wool.id, count: 1},
      {item: goods.latte.id, count: 1},
    ],
  },
  {
    product: goods.latte.id,
    requires: [
      {item: materials.jellybean.id, count: 12},
      {item: materials.milk.id, count: 2},
    ],
  },
  {
    product: goods.root_beer.id,
    requires: [
      {item: materials.flour.id, count: 10},
      {item: goods.happy_planter.id, count: 1},
    ],
  },
  {
    product: goods.happy_planter.id,
    requires: [
      {item: materials.sugar.id, count: 10},
      {item: materials.berry.id, count: 4},
    ],
  },
  {
    product: goods.cuckoo_clock.id,
    requires: [
      {item: materials.flour.id, count: 8},
      {item: goods.toffee_jam.id, count: 3},
    ],
  },
  {
    product: goods.toffee_jam.id,
    requires: [
      {item: materials.jellybean.id, count: 6},
      {item: materials.berry.id, count: 1},
    ],
  },
  {
    product: goods.shovel.id,
    requires: [
      {item: materials.wood.id, count: 10},
      {item: materials.sugar.id, count: 10},
    ],
  },
  {
    product: goods.tongs.id,
    requires: [
      {item: materials.wood.id, count: 22},
      {item: materials.sugar.id, count: 18},
    ],
  },
  {
    product: goods.stake.id,
    requires: [
      {item: materials.wood.id, count: 15},
      {item: materials.sugar.id, count: 15},
    ],
  },
  {
    product: goods.fancy_meal.id,
    requires: [
      {item: materials.jellybean.id, count: 25},
      {item: goods.lollipop_basket.id, count: 3},
    ],
  },
  {
    product: goods.lollipop_basket.id,
    requires: [
      {item: materials.jellybean.id, count: 18},
      {item: goods.rye.id, count: 3},
    ],
  },
  {
    product: goods.rye.id,
    requires: [
      {item: materials.flour.id, count: 2},
      {item: goods.blue_jam.id, count: 1},
    ],
  },
  {
    product: goods.blue_jam.id,
    requires: [
      {item: materials.jellybean.id, count: 3},
    ],
  },
  {
    product: goods.castella.id,
    requires: [
      {item: materials.sugar.id, count: 20},
      {item: materials.milk.id, count: 8},
    ],
  },
  {
    product: goods.omurice.id,
    requires: [
      {item: materials.berry.id, count: 6},
      {item: goods.focaccia.id, count: 1},
    ],
  },
  {
    product: goods.focaccia.id,
    requires: [
      {item: goods.acorn_lamp.id, count: 1},
      {item: materials.flour.id, count: 6},
    ],
  },
  {
    product: goods.glazed_ring.id,
    requires: [
      {item: materials.flour.id, count: 12},
      {item: goods.castella.id, count: 1},
    ],
  },
  {
    product: goods.bead.id,
    requires: [
      {item: goods.burger.id, count: 1},
      {item: materials.wool.id, count: 1},
    ],
  },
  {
    product: goods.yogurt_wreath.id,
    requires: [
      {item: goods.deluxe_pizza.id, count: 2},
      {item: materials.jellybean.id, count: 30},
    ],
  },
  {
    product: goods.deluxe_pizza.id,
    requires: [
      {item: goods.candy_flower.id, count: 4},
      {item: materials.berry.id, count: 8},
    ],
  },
  {
    product: goods.croissant.id,
    requires: [
      {item: goods.butter.id, count: 1},
      {item: materials.milk.id, count: 15},
    ],
  },
  {
    product: goods.cheese.id,
    requires: [
      {item: goods.cuckoo_clock.id, count: 1},
      {item: materials.milk.id, count: 10},
    ],
  },
  {
    product: goods.hammer.id,
    requires: [
      {item: materials.wood.id, count: 30},
      {item: materials.sugar.id, count: 35},
    ],
  },
  {
    product: goods.party_cake.id,
    requires: [
      {item: materials.flour.id, count: 18},
      {item: goods.cheese.id, count: 2},
    ],
  },
  {
    product: goods.pitaya_dragon.id,
    requires: [
      {item: materials.wool.id, count: 2},
      {item: goods.root_beer.id, count: 2},
    ],
  },
  {
    product: goods.redberry_juice.id,
    requires: [
      {item: materials.berry.id, count: 2},
      {item: goods.toy.id, count: 1},
    ],
  },
  {
    product: goods.axe.id,
    requires: [
      {item: materials.wood.id, count: 2},
    ],
  },
  {
    product: goods.brooch.id,
    requires: [
      {item: materials.berry.id, count: 16},
      {item: goods.dreamcatcher.id, count: 1},
    ],
  },
  {
    product: goods.dreamcatcher.id,
    requires: [
      {item: materials.wool.id, count: 1},
      {item: goods.omurice.id, count: 1},
    ],
  },
  {
    product: goods.sparkleberry_jam.id,
    requires: [
      {item: materials.wool.id, count: 3},
      {item: materials.jellybean.id, count: 20},
    ],
  },
  {
    product: goods.muffin.id,
    requires: [
      {item: materials.flour.id, count: 12},
      {item: materials.milk.id, count: 7},
    ],
  },
  {
    product: goods.strawberry_cake.id,
    requires: [
      {item: materials.flour.id, count: 14},
      {item: goods.boba.id, count: 2},
    ],
  },
  {
    product: goods.pickaxe.id,
    requires: [
      {item: materials.wood.id, count: 3},
      {item: materials.sugar.id, count: 3},
    ],
  },
  {
    product: goods.root_bottle.id,
    requires: [
      {item: materials.wood.id, count: 50},
      {item: goods.muffin.id, count: 2},
    ],
  },
];

{
  [p.product]: {requires: p.requires}
  for p in requirements
}
