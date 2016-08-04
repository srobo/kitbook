# Kit Collation

The purpose of Kit Collation is to gather together all kit parts from the previous Competition Programme year, test them and store them ready for packing at the [[Kit Packing]] Event. See [[SR2017 Kit Collation Plan]] for a detailed plan.

## Process

Each kit must go through the following process. Once the CHECKIN task has been performed for a given kit the remaining tasks can be run in parallel - especially the testing of different parts. The sequence of tasks is the same for all parts, however the specific requirements vary depending upon the part.

1. [CHECKIN](#markdown-header-checkin) - Unpack each kit and scan its contents into a single location in the Inventory. Any kit expected back from teams but not found is marked as missing.
1. [VISUAL](#markdown-header-visual) - Visually inspect each part for damage.
1. [CLEAN](#markdown-header-clean) - Clean each part.
1. [TEST](#markdown-header-test) - Test each part, where possible.
1. [CHECKOUT](#markdown-header-checkout) - Pack parts of the same type into boxes and update the Inventory.
1. [CHASEUP](#markdown-header-chaseup) - \[after event\] Chase up missing parts.

## CHECKIN

Tools: Laptop, barcode/QR scanner
Duration: 1 person day

Remove each part from the kit box and move it into a directory containing all checked in kit in the Inventory. There is no need to worry about keeping track of which team the part came from, as this information can be retrieved from the Inventory at a later date if required. Mark each part as having `condition: unknown`.

If there are any parts remaining in the kit box in the Inventory after all parts have been removed make a note of their part codes. This will be followed up with the team if necessary.

## VISUAL

Tools: Laptop, barcode/QR scanner
Duration: 2 person days

**UPDATE REQUIRED: Don't differentiate between fixable and non-fixable parts. Always update `physical_condition` to either `working` or `broken`. At the TEST stage, depending on the type of part, either test it regardless of the `physical condition` or mark its `functional_condition` as `broken` if its `physical_condition` is `broken`.**

Inspect parts for visible functional damage - mild cosmetic damage is not a concern. Also reapply asset stickers if the current one is damaged or illegible.

See the following table for example of functional damage for each part and what to do if there is damage. For some parts the damage observed means that there is little point in continuing with testing and therefore it should just be marked as broken and put into the broken part box (and moved in the inventory). In other situations it may be that the damage can be repaired, so further testing should continue. In this case add the part code to the list of failed visual inspections, update the inventory with details of the failure and otherwise treat it as a pass (do not put it in the broken part box).

| Part | Examples of functional damage | Action |
|------|-------------------------------|--------|
| Power board | cuts or nicks in wires, case cracked/broken, charring, exposed copper on wires | Add to fail list, continue to CLEAN |
| Motor board | case cracked/broken, charring | Add to fail list, continue to CLEAN |
| Servo board | case cracked/broken, charring, blackened pins | Add to fail list, continue to CLEAN |
| Ruggeduino | case cracked/broken, charring | Add to fail list, continue to CLEAN |
| Screw shields | bent pins, chewed up screw heads | Mark as broken, place in broken part box |
| Odroid | case cracked/broken | Add to fail list, continue to CLEAN |
| Tablet | cracked screen | Mark as broken, place in broken part box |
| USB charger | bent pins, cracked case | Mark as broken, place in broken part box |
| USB hub | cracked case, damaged connector | Mark as broken, place in broken part box |
| WiFi dongle | cracked case, damaged connector | Mark as broken, place in broken part box |
| Webcam | cracked case, damaged cable, damaged connector (missing stand is OK) | Mark as broken, place in broken part box |
| Battery charger | cracked case, damaged wires, missing cable tie, missing buttons | Add to fail list, continue to CLEAN |
| Battery charger supply | cracked case, damaged strain relief | Mark as broken, place in broken part box |
| Battery bag | torn stitching | Mark as broken, place in broken part box |
| Battery | Damaged wires, swollen to the point of being hard (squidgy is OK) | Mark as broken, place in broken part box |

## CLEAN

Tools: Bowl, J cloths, washing up liquid, IPA
Duration: 2 person days

Using wringed-out cloth, give each part a wipe with soapy water. If it has adhesive residue, wipe it with IPA and then soapy water.

## TEST

Tools: See part specific test procedure
Duration: 6 person days

If a part fails testing then mark it as broken in the Inventory, along with a short description of the issue, and place it in the broken part box.

| Part | Procedure | Duration |
|------|-----------|----------|
| Battery | https://www.studentrobotics.org/cgit/kit-maintenance-docs.git/tree/src/battery.md | 1 day |
| Battery Charger | | |
| Power board | https://www.studentrobotics.org/cgit/kit-maintenance-docs.git/tree/src/power-board.md | 0.5 days |
| Motor board | https://www.studentrobotics.org/cgit/kit-maintenance-docs.git/tree/src/motor-board.md | 0.5 days |
| Servo board | https://www.studentrobotics.org/cgit/kit-maintenance-docs.git/tree/src/servo-board.md | 0.5 days |
| Ruggeduino | | |
| Odroid | | |
| Tablet | | |
| USB charger | | |
| USB hub | https://www.studentrobotics.org/cgit/kit-maintenance-docs.git/tree/src/usb-hub.md | |
| Webcam | | |
| WiFi dongle | | |

## CHECKOUT

Tools: Laptop, barcode/QR scanner
Duration: 1 person day

Place each part into the appropriate storage box and update the location in the Inventory. Count the following non-tracked items and note down the totals:

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