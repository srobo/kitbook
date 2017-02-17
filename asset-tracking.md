# Asset Tracking

One of the responsibilities of the Kit Logistics Coordinator is to maintain a record of the location and state of all SRs assets. This is generally referred to as Asset Tracking. It is important that the organisation is aware of the location and state of all of its assets at all times.

This chapter documents the high-level organisation aspects around SR asset tracking. It is not intended as a comprehensive user manual for the Inventory system, but rather how SR uses the system to track its assets. **TODO: link to user manual/docs**

## The Inventory

To record all of the necessary information regarding SR assets, all[^1] assets are tracked in the Inventory. It is important to note that only property of SR is tracked in the Inventory; meaning that property of third parties must not be tracked in the Inventory.

Each asset, for example an individual webcam, has a corresponding record in the Inventory. Within this record various properties of the asset are held such that it is possible to unambiguously identify the matching asset from its Inventory record and conversely, identify the matching Inventory record from the asset. There is a one-to-one mapping of assets to Inventory records.

The Inventory primarily records the location of each asset, its value, its physical and functional state, its asset code and a history of any changes made to any of these properties. Secondary to these properties, certain assets have extra information recorded such as MAC address (for assets that have an Ethernet or Bluetooth PHY), serial number and modification flags.

To provide the one-to-one mapping between assets and their Inventory records, each asset/record pair have an *asset code*, which uniquely identifies them. An important part of maintaining this one-to-one mapping is ensuring that the asset code is suitably marked onto the asset such that it can be read in the future.

### Asset Lifecycle

For each asset that SR owns there is a reasonably well defined sequence of stages that it flows through during its lifetime. These 

{% mermaid %}
graph LR
  create(Creation)
  commission(Commission)
  use(Use)
  test(Test)
  repair(Repair)
  modify(Modify)
  decommission(Decommission)
  disposal(Disposal)
  
  create-->commission
  commission-->use
  use-->test
  test-->repair
  test-->use
  repair-->use
{% endmermaid %}

#### Creation
#### Commission
#### Use
#### Test
#### Repair
#### Modify
#### Decommission
#### Disposal

[^1]: This is not quite true as certain low-value assets are not tracked individually.

