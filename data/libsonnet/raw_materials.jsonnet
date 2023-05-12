local materials = [
  {
    id: "flour",
    label: "Biscuit Flour",
  },
  {
    id: "wool",
    label: "Cotton Candy Wool",
  },
  {
    id: "jellybean",
    label: "Jellybean",
  },
  {
    id: "berry",
    label: "Jellyberry"
  },
  {
    id: "milk",
    label: "Milk",
  },
  {
    id: "wood",
    label: "Roll Cake Wood",
  },
  {
    id: "sugar",
    label: "Sugar Cube",
  },
];

{
  [m.id]: m
  for m in materials
}
