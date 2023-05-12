local raw_mats = import "libsonnet/raw_materials.jsonnet";
local goods = import "libsonnet/goods.jsonnet";
local requirements = import "libsonnet/requirements.jsonnet";

{
  materials: raw_mats,
  goods: {
    [good.id]: good + requirements[good.id]
    for good in std.objectValues(goods)
  },
}
