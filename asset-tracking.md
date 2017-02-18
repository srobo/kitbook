# Asset Tracking

One of the responsibilities of the Kit Logistics Coordinator is to maintain a record of the location and state of all SRs assets. This is generally referred to as asset tracking. To allow SR to operate it is important that the location and state of all of its assets are known at all times.

This chapter documents the high-level organisation aspects around SR asset tracking. It is not intended as a comprehensive user manual for the Inventory system, but rather how SR uses the system to track its assets. **TODO: link to user manual/docs**

## The Inventory

To record all of the necessary information regarding SR assets, all[^1] assets are tracked in the Inventory. Unfortunately, due to historical use of the term, SR uses the term *Inventory* to refer to its asset tracking system. Normally inventory refers to a record of things that an organisation sells whereas assets are things that an organisation owns and uses to operate; tracked in its asset tracking system. It is not a big problem, but it is an unusual quirk to be aware of.

Each asset, for example an individual webcam, has a corresponding record in the Inventory. Within this record various properties of the asset are held such that it is possible to unambiguously identify the matching asset from its Inventory record and conversely, identify the matching Inventory record from the asset. There is a one-to-one mapping of assets to Inventory records.

The Inventory primarily records the location of each asset, its value, its physical and functional condition, its asset code and a history of any changes made to any of these properties. Secondary to these properties, certain assets have extra information recorded such as MAC address (for assets that have an Ethernet or Bluetooth PHY), serial number and modification flags.

To provide the one-to-one mapping between assets and their Inventory records, each asset/record pair have an *asset code*, which uniquely identifies them. An important part of maintaining this one-to-one mapping is ensuring that the asset code is suitably marked onto the asset such that it can be read in the future.

Only property of SR is tracked in the Inventory; meaning that property of third parties must not be tracked in the Inventory.

### Asset Lifecycle

For each asset that SR owns there is a reasonably well defined sequence of stages that it flows through during its lifetime. This flow is shown in the diagram below.

{% mermaid %}
graph TB
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
  test-- fixable -->repair
  test-- working -->use
  test-- unfixable -->decommission
  repair-->test
  decommission-->disposal
{% endmermaid %}

#### Creation {#creation}

When an asset is purchased or manufactured, a record must be entered into the Inventory. At this point a new asset code is automatically generated. The asset code **must** be marked onto the asset[^2]. The asset code can be marked in the following ways:

  * Printed paper label with QR code and text
  * Dymo label with code128 barcode and text
  * Handwritten with permanent marker
  * UHF RFID tag[^3]
  * Programmed onto the asset (e.g. such that it is possible to read over USB)

More than one of the above techniques can be used to provide redundancy.

The ideal marking solution is both human and machine readable and should be durable. These criteria should be considered when deciding how to mark a particular asset. Programming the asset code onto the asset, where possible, provides a very high level of durability as there is no label or pen that can be damaged; However one has to physically plug a cable in to read the code. QR codes and barcodes have the advantage that physical contact with the asset is not required, but they do require the asset to be visible. UHF RFID tags provide the added benefit of allowing the asset code to be read even when they are not visible; for instance when it is in a box.

#### Commission {#commission}

Some assets will require commissioning after they have been added to the Inventory. This can be best explained with an example: When a newly manufactured motor board is added to the Inventory it is yet to be programmed or fully tested (although it may have had some basic end-of-line testing performed upon it). Once it has been added to the Inventory, in the *Creation* stage, it is ready to be programmed and tested before being used. This initial programming and testing of the motor board is part of its *commissioning* process.

Not all assets will require commissioning. Generally these are things such as USB hubs, where it is assumed that the manufacturer has suitably tested their product and there is no further programming required.

Once an asset has been commissioned, its physical and functional condition must be updated appropriately in its record. In the case of assets that do not require any special commissioning procedure to be carried out, it should be assumed that they are both physically and functionally working and their records updated as such.

#### Use {#use}

Once an asset has been commissioned, or has been tested and shown to be working, it is ready to be used for its intended purpose. For the majority of assets this means that it will become part of a kit and ultimately be used by a team.

During the *use* stage of an assets lifetime the majority of the updates to its record in the Inventory will be to keep track of its physical location; for example with a particular team. Occasionally there may also be other updates to its record required, such as adding a note to its description.

#### Test {#test}

The Inventory should, as far as is possible, represent the current state of all assets. However as time passes, the recorded physical and functional condition of a given asset will diverge from reality. To help rectify this, assets are regularly tested. For most assets this occurs once each year at the Kit Collation Event, run by the Hardware Production Coordinator. **TODO: Link to HPC docs.** Assets that have been repaired or modified must also undergo testing.

As in the *commission* stage, an asset's physical and functional condition must be updated appropriately in its record once it has been tested. If the asset is in full working order it is ready for use. If the asset is broken then it may be possible to repair it. In some situations it is either not cost effective or not possible to repair an asset. When this occurs, the asset is no longer useful to SR and will be *decommissioned* and *disposed* of.

#### Repair {#repair}

If an asset is found to be broken, it may be possible to repair it. An example of this is a motor board that has a cracked case. It is trivial to replace the broken parts of the case and therefore allow the motor board to once again be used (after being retested).

#### Modify {#modify}

Throughout the lifetime of an asset it may be necessary to perform modifications to it. This may be to add extra functionality, improve reliability or to fix a known problem. For most assets the opportunity to perform these modifications is at the Kit Collation Event, run by the Hardware Production Coordinator. If modifications are required they will perform them as necessary.

When modifications are made to an asset it is important to track the changes in its Inventory record. These generally take the form of *modification flags* that indicate if a particular asset has been modified. If a modification across all assets of a given type is planed, for example soldering on an extra component to all motor boards, then all motor board Inventory records should be updated to indicate that none of them have received the modification. Once each asset is modified, its Inventory record must be updated appropriately.

#### Decommission {#decommission}

If an asset is broken and unrepairable or if an asset is simply no longer required then it must first be decommissioned and then disposed of.

Some assets will have specific decommissioning requirements, however in all cases the following must be done:

 * If the asset is to be sold/given to a third party, remove or obliterate SR logo and any 'property of' messages.

#### Disposal {#disposal}

[^1]: This is not strictly true as certain low-value assets are not tracked. A general rule-of-thumb is that anything under £5 is not tracked.
[^2]: There was historically a concept of 'deferred labelling', where a record was added to the Inventory and the asset labelled at a later time. This approach is no longer used as it can result in assets going unlabelled.
[^3]: Currently in the planning stage.