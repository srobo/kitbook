# Asset Tracking

One of the responsibilities of the Kit Logistics Coordinator is to maintain a record of the location and state of all Student Robotics assets. This is generally referred to as Asset Tracking. It is important that the organisation is aware of the location and state of all of its assets at all times.

## The Inventory

To record all of the necessary information regarding Student Robotics assets, all[^1] assets are tracked in the Inventory. It is important to note that only property of Student Robotics is tracked in the Inventory; meaning that property of third parties must not be tracked in the Inventory.

Each asset, for example an individual webcam, has a corresponding record in the Inventory. Within this record various properties of the asset are held such that it is possible to unambiguously identify the matching asset from its Inventory record and conversely, identify the matching Inventory record from the asset. There is a one-to-one mapping of assets to Inventory records.

The Inventory primarily records the location of each asset, its value, its physical and functional state, its asset code and a history of any changes made to any of these properties. Secondary to these properties, certain assets have extra information recorded such as MAC address (for assets that have an Ethernet or Bluetooth PHY), serial number and modification flags.

To provide the one-to-one mapping between assets and their Inventory records, each asset/record pair have an `asset code`, which uniquely identifies them. An important part of maintaining this one-to-one mapping is ensuring that the *asset code* is suitably marked onto the asset

### Asset Lifecycle

#### Creation
#### Commissioning
#### Operation
#### Testing
#### Repair
#### Updating/Modifying
#### Decommissioning/Disposal

[^1]: This is not quite true as certain low-value assets are not tracked individually.

