# SR2017 Kit Collation Plan

The SR2017 Kit Collation Event follows the general plan outlined on the [[Kit Collation]] page. This page is to document any deviations from this plan or to document more details.

## CHECKIN

All parts, excluding RUBs, are to be scanned into the `kit-collation-venue/checked-in` directory in the Inventory.

Once all non-RUB parts have been moved each RUB should be checked to ensure it is empty and then moved into the `kit-collation-venue/checked-in` directory too. Any parts shown to be in the RUBs in the inventory should be moved into the `kit-collation-venue/missing` directory. `lipo-bag-overlander-22x30` parts should be checked to ensure that they're empty. Any batteries still shown to be in a bag should be moved into the `kit-collation-venue/missing` directory.

All `ruggeduino-case` assets should be deleted and their case asset stickers removed/covered. We are no longer tracking the cases as separate entities.

All `usb-stick*` assets should be deleted. We are no longer going to track these in the Inventory. We will treat them in the same way as we treat camcons and USB cables - they will be counted at the end of the KCE.

Once all parts have been moved their `condition` and `physical_condition` are to be set to 'unknown'.

CHECKIN completed at 15:11 on 4th August (day 2)

## VISUAL

We are going to add a new `physical_condition` flag, that will have a value of either `working`, `broken` or `unknown`. Ideally the `condition` flag would be renamed to `functional_condition`, but this breaks the tooling so we'll leave it for now. The purpose of the two flags are as follows: `functional_condition` indicates whether the part works or not after being tested, `physical_condition` indicates whether there are other issues with the part that mean it should not be shipped to teams (smashed case, bare copper, etc). There is no point in updating the `functional_condition` (currently `condition`) flag while the kit is in the hands of teams - as it cannot be tested.