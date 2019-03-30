---
original:
  authors: Richard Barlow
  url: https://bitbucket.org/richardbarlow/sr-comp-team-support-coord/wiki/Helpdesk
---
# Helpdesk

Helpdesk is the teams' primary source of support. Volunteers are expected to advise teams in a similar fashion to mentoring - that is they should not tell teams what to do, but offer advice and guidance. The volunteers also help with kit related issues that may or may not be caused by a problem with the kit. It is the responsibility of the Helpdesk volunteers to assess teams' problems and, if necessary, swap out bits of kit hardware. In some situations teams may need to be put in contact with a person with more in-depth knowledge of the kit to help diagnose and fix issues.

## Equipment

 * Two copies of the rules - one attached to a desk by some means
 * A copy of this document
 * Issue forms for both Helpdesk Volunteers and Roving Helpers
 * Kit Swap Forms
 * Spare kit in the 'spare kit box'
 * List of spare kit
 * Broken kit box
 * Issue Form box
 * Laptop to view documentation and the IDE
 * Red insulating tape
 * Permanent marker
 * Large post-it notes
 * Radio
 * Emergency contact numbers
 * Spare robot flags/badges for teams to borrow to try for size (must be clearly marked and returned to helpdesk ASAP)
 * Spare robot flag pipe fittings to give to teams.
 * Saturday evening battery/charger loans
 * Velcro
 * Scissors
 * Velcro measurement/instruction sheet

## Volunteer Requirements

At least one volunteer on Helpdesk must have prior experience of the use of the Student Robotics kit.

## Procedures

Almost all of Helpdesk's operations are covered by the following procedures.

### Handling of all requests

Whenever a team comes to Helpdesk with an issue a Helpdesk Volunteer must fill in their TLA and a single-sentence description of the issue on an Issue Form. When the issue has been resolved a single sentence description of the resolution must be written on the form. This is primarily for analytical purposes so that we can improve the operation of Helpdesk in future years.

Whenever a team comes to Helpdesk with an issue that cannot be solved instantly their TLA and a very brief (couple of words) summary of the problem must be written on a post-it note and stuck up on a board of current issues. This ensures that no problems get dropped while they are being investigated. When the issue is resolved the post-it note can be thrown away. If it appears that a particular post-it has remained on the board for an extended period of time and there has been no obvious activity to resolve the issue then a volunteer should be dispatched to the team to see if it's still a problem.

### Handling of requests for robot safety checks

The robots require safety checking before they are allowed to compete in the competition. Teams will not be given their hi-viz vest until their robot has passed the safety check procedure. Helpdesk volunteers should direct teams enquiring about safety checks to the Health & Safety Coordinator.

### Handling of general robot development requests

Many teams will come to Helpdesk requesting help with the development of their robot or, more likely, help using the Student Robotics kit and associated software. As mentioned earlier, Helpdesk volunteers are not expected to tell teams what to do, but rather offer advice. Helpdesk volunteers should strive to answer questions about the use of the kit and software.

Some queries may require a volunteer to visit the team in their pit to observe behaviour in situ. This must only be done by a Helpdesk volunteer if it will leave no fewer than two volunteers actively manning Helpdesk. If it is not possible for a Helpdesk volunteer to visit a team then a [Roving Helper](/competition/team-support/Roving_Helper) should be summoned, via radio if necessary.

In some rare situations it may be necessary to request the assistance of a person with more in-depth knowledge of the kit to help solve an issue. This should only be done if the issue is non-trivial. Consult the Volunteer manager to find who might provide further help.

### Handling suspected damaged kit requests

If a team comes to Helpdesk with a suspicion of some of the Student Robotics kit being damaged then the following procedure should be followed:

 1. Request that the team take a freshly charged battery and see if the problem persists.
 1. Request that the team tries swapping the USB and power cables to the device in question, where applicable.
 1. If the kit contains multiple of the device in question (e.g. USB hub, motor board), request that the team tries swapping it with the other one in the kit.
 1. Request that the team tests the device in question with a very simple code project that only attempts to control that one device.
 1. If all previous steps indicate that the device is probably faulty then continue with the kit swap procedure.

### Swapping out kit

After determining that a piece of kit is most likely faulty it must be swapped with a working spare. Helpdesk has a supply of spare kit. To swap a piece of kit please fill in a [Kit Swap Form](https://bitbucket.org/richardbarlow/sr-comp-team-support-coord/src/master/forms/kit_swap_form.odt) and follow the instructions on there. Since there is a limited quantity of spare kit, all attempts must be made to verify that the issue being observed is not caused by something else.

### Handling requests for batteries/chargers/bags on Saturday evening

Some teams may wish to work on their robot on Saturday night and will therefore require batteries, a charger, a charger PSU and a battery bag. If a team requests these items, note down their TLA and the part codes of the five items on the 'Saturday Evening Battery/Charger Loans' sheet and give them the parts. On Sunday morning one helpdesk volunteer must ensure that all of the parts listed on this sheet are collected from the teams and returned to the battery charging station.

### Handling requests for batteries/chargers/bags on Sunday evening

Some teams have been granted permission to keep the kit for a little while after the competition. To be able to make use of the kit they will require batteries and stuff. They **MUST NOT** be given any of these items from helpdesk. They will receive these items at the 'Kit Return Desk' downstairs when they leave. All teams must go to the Kit Return Desk, regardless of whether they are returning their kit or not as that is where teams keeping kit will receive their batteries and stuff.

### Handling requests for flag fittings

Teams may request a pipe connector to use on their robot for the purpose of attaching the robot flags. As we have a limited supply, make sure that you only let each team only take one, so that they can't keep coming back for more.

Also, please show teams how to remove the fittings, as they are very strong and need to be released in the correct way (Press down on the center ring)

### Frequently Asked Questions

Based on issues handled in previous years, the following may be helpful:

| Key phrase | Resolution |
|------------|------------|
| "Failed to dequeue buffer Assertion 'frame != ((void*0)' failed" | There was a problem with the webcam. Make sure it's plugged in. Make sure the webcam is plugged directly into the brain board (not via a USB hub). If the problem keeps occurring, try swapping out the webcam (following the procedure). |
| Need to initialise servos to non-zero position | Use 'Custom Robot Object Initialisation' and set position between `.init()` and `.wait_start()`. (On 'Programming->sr' page of docs near the bottom) |
| How to access starting corner/zone number in code | Use 'R.zone' (On 'Programming->sr' page of docs in the 'Other Robot Attributes' section) |
| Worried about token/marker offset of 100 in competition mode | We handle this automatically, they do not need to worry. If their code works in development mode with development markers, it will work in competition mode with competition markers. They must ensure that they plug the arena/competition key provided to them in the staging area into their robot before they turn the power on. |
| Any issues with tablets/charging of tablets | Remind teams that they can access the robot interface on any WiFi enabled defined, i.e. a laptop, phone or tablet of their own. Direct them to the 'Kits->WiFi' page in the docs. If they really want to use the tablet and the battery is knackered, swap it out (following the procedure). |
