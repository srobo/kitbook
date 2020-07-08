# Kit Team

## What is the Kit Team?

Our main reason for existing is to develop, maintain and support the
"kit" that teams use to build their robots.  Organisationally, we do
this by providing a "kit service" to the competition team (the
reference description of our responsibilities can be found in the [ops
manual](https://opsmanual.studentrobotics.org/annual-robotics-competition/kit-team)).

**Our overarching mission is to to empower teams to discover their
ability to engineer amazing robots.**

The kit team is organised by the kit team committee, who ensure that
the kit team's responsibilities are upheld.

The kit team's operations are divided into a set of "project teams",
each of which is:

 * Overseen by the kit committee
 * Takes ownership of its responsibilities.
 * Autonomous, in that it organises itself, works out how it should
   operate interally, and how to prioritise its activities.
 * A small group of volunteers (approx 3-10).

## Project Teams

We are currently in the process of forming the following project teams:

### Support Team

The support team provides technical support to students, teams and volunteers relating to *The Kit*.
This can include:

 * Providing support at events like kickstart, tech days and the competition
 * Servicing support queries from students on the forums
 * Developing and maintaining documentation for *The Kit*
 * Determining when spare parts need to be shipped to teams (the Kit Assets Team will do the shipping)
 * Interacting with mentors to resolve problems

### Infrastructure Team

Provides and maintains managed hosting services and tooling to the rest of the kit team.

Technologies maintained by this team might include:

 * an environment in which the IDE software (maintained by the Dev Tooling team) can be run e.g. a cloud VM
 * administration of Kit Team's usage of shared services e.g. github, CI

The scope of the service provided by this team could perhaps be extended to the rest of the Student Robotics organisation in the future, thus covering technologies such as the website, forums, user database -- however this is not planned at present.

### Kit Assets Team

The assets team is responsible for keeping track of the physical parts of the kit, as well as:

 * Storing it
 * Keeping it well maintained (e.g. fixing it between competitions)
 * Shipping the kit to Kickstarts and teams, including spares
 * Chasing non-returned kits and retrieving them
 * Packing kits

This includes any kit that may be solely allocated to 'development'.

(For SR veterans: please note that the assets team is not responsible for managing SR assets that are not kit related -- e.g. parts of the arena, marketing materials etc.  Also note that the assets team may choose to use whatever asset tracking methods they deem to be suitable -- they are not constrained to using any particular system.)

### Brain Team

The brain team is responsible for the development and maintenance of the software that runs on the 'brain' part of the kit.  It should provide documentation to the support team regarding how the end-user should use the software.

The brain team should ensure that any features it releases to teams during a competition year continue to be available and usable until that competition year has completed.

### Dev Tooling Team

Produces and maintains tooling for competitors to use to develop their robot software.  This team is responsible for software that is not used 'on', or within, the physical kit that is shipped to teams.

For example:

* an IDE
* a robot simulator
* live debugging tools e.g. the non-robot side of a remote debugging interface

### Hardware Strategy Team

The kit includes a selection of hardware that teams use to construct their robot.  It is the job of the hardware strategy team to ensure that this selection is the best it can be to fulfil the kit team's mission.  The hardware strategy team defines what hardware is to be included in the kit each year.  It does not perform hardware development of any kind -- instead it performs investigations and comes up with a strategy for how the hardware should develop.  It then confers with the kit team committee to ascertain whether any new project teams need to be formed to support the development/maintenance any new items of kit.

The hardware strategy team's investigations should involve looking at how the kit is currently being used, as well as what is technically feasible given the available resources (money, time).


### Firmware Team

The firmware team is responsible for developing and maintaining the firmware for hardware included in the kit.

The firmware team should ensure that any features it releases to teams during a competition year continue to be available until that competition year has completed.


### Robot Perception and Planning Team

There are lots of aspects of robotics that extend beyond simple motor control and line-following.  The robot perception and planning team's responsibility is to research, develop and maintain software that helps teams to make their robots perceive the world, as well as plan and execute motion through space.

Sometimes these new developments may introduce new hardware dependencies -- this team should interact with the hardware strategy team to determine feasibility etc.
