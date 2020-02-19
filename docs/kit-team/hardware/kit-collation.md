---
original:
  authors: Richard Barlow
  url: https://bitbucket.org/richardbarlow/sr-hw-prod-coord/wiki/Kit%20Collation
---
# Kit Collation

The purpose of Kit Collation is to gather together all kit parts from the previous Competition Programme year, test them and store them ready for packing at the [Kit Packing](./kit-packing.md) Event. See [SR2017 Kit Collation Plan](./sr2017-kit-collation-plan.md) for a detailed plan.

## Process

Each kit must go through the following process. Once the CHECKIN task has been performed for a given kit the remaining tasks can be run in parallel - especially the testing of different parts. The sequence of tasks is the same for all parts, however the specific requirements vary depending upon the part.

1. [CHECKIN](#checkin) - Unpack each kit and scan its contents into a single location in the Inventory. Any kit expected back from teams but not found is marked as missing.
1. [VISUAL](#visual) - Visually inspect each part for damage.
1. [CLEAN](#clean) - Clean each part.
1. [TEST](#test) - Test each part, where possible.
1. [CHECKOUT](#checkout) - Pack parts of the same type into boxes and update the Inventory.
1. [CHASEUP](#chaseup) - \[after event\] Chase up missing parts.

Throughout the process the state of each part is tracked through two fields: `functional_condition` (currently `condition` for backwards compatibility) and `physical_condition`. The `functional_condition` field has a value of either `unknown`, `broken` or `working` and is set based upon the outcome of the testing procedure carried out in the TEST task. The `physical_condition` field has one of the same three values that the `functional_condition` field can have, but it is set based upon a visual inspection of the part during the VISUAL task.

We will only ship parts that have both a `functional_condition` and `physical_condition` of `working`. After the Kit Collation Event any parts with either a `functional_condition` or `physical_condition` of `broken` will be assessed to see whether they can be repaired or need to be replaced.

## CHECKIN

Tools:
: Laptop, barcode/QR scanner

Duration:
: 1 person day

Remove each part from the kit box and move it into a `checked-in` directory in the Inventory. There is no need to worry about keeping track of which team the part came from, as this information can be retrieved from the Inventory at a later date if required. Mark each part as having `functional_condition: unknown` and `physical_condition: unknown`.

If the Inventory shows any parts remaining in the kit box after all of the parts have been physically removed move them into a `missing` directory.

## VISUAL

Tools:
: Laptop, barcode/QR scanner, label printer

Duration:
: 2 person days

Inspect parts for visible physical damage - mild cosmetic damage is not a concern. Also apply a new asset sticker if the current one is damaged or illegible. See the following table for example of visible physical damage for each part. Note that a case is considered to be damaged if a panel is cracked entirely in half (or close to it) or if a piece has broken off such that the board can be touched. Once the physical condition of the part has been assessed, update its `physical_condition` field to either `working` or `broken`. If it is broken, add a short description of the issue.

| Part | Examples of physical damage |
|------|-------------------------------|
| Power board | cuts, nicks or exposed copper on wires; large heatshrink slipping off of XT 60; loose screw terminal; case cracked/broken/missing screws; charring on board; connectors broken/full of stuff |
| Motor board | case cracked/broken, charring on board, connectors broken/full of stuff, button held down (try pressing the button - it should click) |
| Servo board | case cracked/broken, charring on board, blackened pins, connectors broken/full of stuff |
| Ruggeduino | case cracked/broken/missing screws, charring on board, connectors broken/full of stuff |
| Screw shields | bent pins, chewed up screw heads |
| Odroid | case cracked/broken, case hinge broken (try pulling apart at hinge end), connectors broken/full of stuff |
| Tablet | cracked screen |
| USB charger | bent pins, cracked case |
| USB hub | cracked case, damaged connector, loose parts rattling around inside |
| WiFi dongle | cracked case, damaged connector |
| Webcam | cracked case, damaged cable, damaged connector (missing stand is OK) |
| Battery charger | cracked case, damaged wires, large heatshrink slipping off of XT 60, missing cable tie, missing buttons |
| Battery charger supply | cracked case, damaged strain relief |
| Battery bag | torn stitching |
| Battery | Damaged wires, swollen to the point of being hard (squidgy is OK) |

Some parts are not tracked in the Inventory, but still require visual inspection. If any of these parts fail they should be thrown in the bin:

| Part | Example of visible damage |
|------|---------------------------|
| USB memory stick | |
| Micro USB cable | |
| Full-size USB cable |
| Odroid power cable | |
| Screwdriver | |

## CLEAN

Tools:
: Bowl, J cloths, washing up liquid, IPA, label residue remover

Duration:
: 2 person days

Using wringed-out cloth, give each part a wipe with soapy water. If it has adhesive residue, wipe it with label residue remover and then soapy water once the reside has been removed. For removal of grease and pen marks wipe it with IPA.

## TEST

Tools:
: See part specific test procedure

Duration:
: 6 person days

Follow the part specific testing procedure linked in the table below. Once the condition of the part has been assessed, update its `functional_condition` field to either `working` or `broken`.

| Part | Procedure | Duration |
|------|-----------|----------|
| Battery | https://github.com/srobo/kit-maintenance-docs/tree/master/src/battery.md | 1 day |
| Battery Charger | | |
| Power board | https://github.com/srobo/kit-maintenance-docs/tree/master/src/power-board.md | 0.5 days |
| Motor board | https://github.com/srobo/kit-maintenance-docs/tree/master/src/motor-board.md | 0.5 days |
| Servo board | https://github.com/srobo/kit-maintenance-docs/tree/master/src/servo-board.md | 0.5 days |
| Ruggeduino | https://github.com/srobo/kit-maintenance-docs/tree/master/src/ruggeduino.md | |
| Odroid | https://github.com/srobo/kit-maintenance-docs/tree/master/src/odriod.md | |
| Tablet | | |
| USB charger | https://github.com/srobo/kit-maintenance-docs/tree/master/src/usb-charger.md | |
| USB hub | https://github.com/srobo/kit-maintenance-docs/tree/master/src/usb-hub.md | |
| Webcam | | |
| WiFi dongle | | |

## CHECKOUT

Tools:
: Laptop, barcode/QR scanner

Duration:
: 1 person day

Allocate a box or two for storage of broken parts. Allocate a box or two for storage of working parts of a single type (e.g. one box for servo boards, a couple of boxes for power boards). Check the condition of each part and, if both the `functional_condition` and `physical_condition` fields are set to `working`, place it in the appropriate working box and move it in the Inventory to that box. Otherwise place it in the broken box and move it in the Inventory to the broken box.

Also, count the following untracked items and note down the totals. Bag the CamCon connectors up by size and write the number of connectors contained on the bag.

* USB Memory Stick
* Micro USB Cable
* Full-size USB Cable
* 7.5mm CamCon
* 5mm CamCon
* 3.81mm CamCon
* Odroid Power Cable
* Screw Driver

## CHASEUP

After the event the parts left in the `kit-collation-venue/missing` directory need to be chased up. Each part should be traced back to the team it belonged to and the team leader notified of the missing items. Note that they may be missing due to parts being swapped at the competition, etc, so they may not have any knowledge of the parts whereabouts.
