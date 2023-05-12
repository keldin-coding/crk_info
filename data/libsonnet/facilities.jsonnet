local facilities = {
  carpenter: {
    label: "Carpentry Shop",
  },
  diner: {
    label: "Jampie Diner",
  },
  jewelry: {
    label: "Jewelry Salon",
  },
  flowers: {
    label: "Flower shop",
  },
  workshop: {
    label: "Artisan's Workshop",
  },
  cafe: {
    label: "Latte cafe",
  },
  toy_store: {
    label: "Toy Store",
  },
  dairy: {
    label: "Dairy Factory",
  },
  jammery: {
    label: "Jammery",
  },
  bakery: {
    label: "Bakery",
  },
  smithy: {
    label: "Smithy",
  },
  maison: {
    label: "Maison du Cake",
  },
  barrel_inn: {
    label: "Barrel Inn",
  },
};

{
  data: std.mapWithKey(function(key, data) data + {id: key}, facilities),
  references: {
    [facility.id]: facility.id
    for facility in std.objectValues($.data)
  }
}
