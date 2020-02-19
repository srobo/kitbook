---
original:
  authors: Richard Barlow
  url: https://srobo-legacy.gitbooks.io/student-robotics-kit-logistics/asset-tracking.html
---
# Asset Tracking

One of the responsibilities of the Kit Logistics Coordinator is to maintain a record of the location and state of all SRs assets. This is generally referred to as asset tracking. To allow SR to operate it is important that the location and state of all of its assets are known at all times.

This chapter documents the high-level organisation aspects around SR asset tracking. It is not intended as a comprehensive user manual for the Inventory system, but rather how SR uses the system to track its assets.

See the page on [logistics-software](./logistics-software.md) for details of the inventory's datastore and tooling required to use it.

## The Inventory

To record all of the necessary information regarding SR assets, all[^1] assets are tracked in the Inventory. Unfortunately, due to historical use of the term, SR uses the term *Inventory* to refer to its asset tracking system. Normally inventory refers to a record of things that an organisation sells whereas assets are things that an organisation owns and uses to operate; tracked in its asset tracking system. It is not a big problem, but it is an unusual quirk to be aware of.

Each asset, for example an individual webcam, has a corresponding record in the Inventory. Within this record various properties of the asset are held such that it is possible to unambiguously identify the matching asset from its Inventory record and conversely, identify the matching Inventory record from the asset. There is a one-to-one mapping of assets to Inventory records.

Each type of asset is identified by its *name*; for example a Logitech C270 webcam has the name `webcam-logitech-c270`. All assets of the same type have the same name. When creating assets that do not have an existing name in the Inventory, care must be taken to ensure that the new name given to the asset is suitably descriptive. This ensures that it does not clash with future assets that are similar, but not the same; for example an asset with the name `usb-charger` is not descriptive enough, but `usb-charger-a-500ma` is.

The Inventory primarily records the location of each asset, its value, its physical and functional condition, its asset code and a history of any changes made to any of these properties. Secondary to these properties, certain assets have extra information recorded such as MAC address (for assets that have an Ethernet or Bluetooth PHY), serial number and modification flags.

To provide the one-to-one mapping between assets and their Inventory records, each asset/record pair have an *asset code*, which uniquely identifies them. An important part of maintaining this one-to-one mapping is ensuring that the asset code is suitably marked onto the asset such that it can be read in the future.

Only property of SR is tracked in the Inventory; meaning that property of third parties must not be tracked in the Inventory.

### Asset Lifecycle

For each asset that SR owns there is a reasonably well defined sequence of stages that it flows through during its lifetime. This flow is shown in the diagram below.

```mermaid
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
  use-->modify
  use-->test
  use-->decommission
  modify-->test
  test-->repair
  test-->use
  test-->decommission
  repair-->test
  decommission-->disposal
```

#### Creation

When an asset is purchased or manufactured, a record must be entered into the Inventory. At this point a new asset code is automatically generated. The asset code **must** be marked onto the asset[^2]. The asset code can be marked in the following ways:

* Printed paper label with QR code and text
* Dymo label with code128 barcode and text
* Handwritten with permanent marker
* UHF RFID tag[^3]
* Programmed onto the asset (e.g. such that it is possible to read over USB)

More than one of the above techniques can be used to provide redundancy.

The ideal marking solution is both human and machine readable and should be durable. These criteria should be considered when deciding how to mark a particular asset. Programming the asset code onto the asset, where possible, provides a very high level of durability as there is no label or pen that can be damaged; However one has to physically plug a cable in to read the code. QR codes and barcodes have the advantage that physical contact with the asset is not required, but they do require the asset to be visible. UHF RFID tags provide the added benefit of allowing the asset code to be read even when they are not visible; for instance when it is in a box.

#### Commission

Some assets will require commissioning after they have been added to the Inventory. This can be best explained with an example: When a newly manufactured motor board is added to the Inventory it is yet to be programmed or fully tested (although it may have had some basic end-of-line testing performed upon it). Once it has been added to the Inventory, in the *Creation* stage, it is ready to be programmed and tested before being used. This initial programming and testing of the motor board is part of its *commissioning* process.

Not all assets will require commissioning. Generally these are things such as USB hubs, where it is assumed that the manufacturer has suitably tested their product and there is no further programming required.

Once an asset has been commissioned, its physical and functional condition must be updated appropriately in its record. In the case of assets that do not require any special commissioning procedure to be carried out, it should be assumed that they are both physically and functionally working and their records updated as such.

#### Use

Once an asset has been commissioned, or has been tested and shown to be working, it is ready to be used for its intended purpose. For the majority of assets this means that it will become part of a kit and ultimately be used by a team.

During the *use* stage of an assets lifetime the majority of the updates to its record in the Inventory will be to keep track of its physical location; for example with a particular team. Occasionally there may also be other updates to its record required, such as adding a note to its description.

#### Test

The Inventory should, as far as is possible, represent the current state of all assets. However as time passes, the recorded physical and functional condition of a given asset will diverge from reality. To help rectify this, assets are regularly tested. For most assets this occurs once each year at the [Kit Collation Event][kit-collation-event], run by the [Hardware Production Coordinator][hardware]. Assets that have been repaired or modified must also undergo testing.

As in the *commission* stage, an asset's physical and functional condition must be updated appropriately in its record once it has been tested. If the asset is in full working order it is ready for use. If the asset is broken then it may be possible to repair it. In some situations it is either not cost effective or not possible to repair an asset. When this occurs, the asset is no longer useful to SR and will be *decommissioned* and *disposed* of.

[kit-collation-event]: ../hardware/kit-collation.md
[hardware]: ../hardware/README.md

#### Repair

If an asset is found to be broken, it may be possible to repair it. An example of this is a motor board that has a cracked case. It is trivial to replace the broken parts of the case and therefore allow the motor board to once again be used (after being retested).

#### Modify

Throughout the lifetime of an asset it may be necessary to perform modifications to it. This may be to add extra functionality, improve reliability or to fix a known problem. For most assets the opportunity to perform these modifications is at the Kit Collation Event, run by the Hardware Production Coordinator. If modifications are required they will perform them as necessary.

When modifications are made to an asset it is important to track the changes in its Inventory record. These generally take the form of *modification flags* that indicate if a particular asset has been modified. If a modification across all assets of a given type is planed, for example soldering on an extra component to all motor boards, then all motor board Inventory records should be updated to indicate that none of them have received the modification. Once each asset is modified, its Inventory record must be updated appropriately.

#### Decommission

If an asset is broken and unrepairable or if an asset is simply no longer required then it must be decommissioned and then disposed of. The Kit Logistics Coordinator must only decommission and dispose of an asset when explicitly instructed to do so by the person responsible for the asset. **TODO: Define who is responsible for each type of asset**

It must first be determined if the asset is to be sold/given away or if it is to be thrown away, as this affects the decommissioning process. Some assets will have specific decommissioning requirements, however in all cases there are common steps that must be taken.

For assets that are to be sold or given to a third party all SR logos and 'property of' messages must be removed/obliterated. This ensures that future owners and users of the assets do not mistakenly think that it is property of SR and that SR itself does not mistakenly think that it is property belonging to SR.

Once an asset has been fully decommissioned its Inventory record must be updated with a *modification flag* that indicates that it has been decommissioned.

#### Disposal

Once an asset has been decommissioned, it must be either sold/given away or thrown away, depending upon what was previously agreed when starting the decommissioning process.

If an asset is to be sold the Kit Logistics Coordinator will work with the person previously responsible for that asset to determine the best way to sell the asset. If the estimated value of the asset at the time of selling is above £50 then the trustees are to be be consulted.

If an asset is to be thrown away the Kit Logistics Coordinator will work with the person previous responsible for that asset to determine if there are any special requirements regarding its disposal; for example WEEE regulations for electronics. Also if the value of the asset, as shown in its Inventory record, is above £50 then the trustees are to be consulted.

Once an asset has been disposed of, either via selling/giving away or by throwing away, its Inventory record must be removed from the Inventory. Only records that have a decommissioned modification flag should be removed from the Inventory.

[^1]: This is not strictly true as certain low-value assets are not tracked. A general rule-of-thumb is that anything under £5 is not tracked.
[^2]: There was historically a concept of 'deferred labelling', where a record was added to the Inventory and the asset labelled at a later time. This approach is no longer used as it can result in assets going unlabelled.
[^3]: Currently in the planning stage.
