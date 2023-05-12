local raw_mats = import "libsonnet/raw_materials.jsonnet";
local goods = import "libsonnet/goods.jsonnet";
local requirements = import "libsonnet/requirements.jsonnet";
local facilities = (import "libsonnet/facilities.jsonnet").data;

{
  materials: raw_mats,
  facilities: facilities,
  goods: {
    [good.id]: good + requirements[good.id]
    for good in std.objectValues(goods)
  },
}
