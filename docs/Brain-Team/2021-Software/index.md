# Goals

The 2021 Kit software aims to replace the 2015 software, with a launch targeted for SR2021 Kickstart.

## What does the 2015 kit do right?

- Provides a Python API to control hardware
- Functional computer vision to sense fiducial markers
- Documentation is pretty comprehensive
- API useful for teams with low and high programming experience (ie. easy access for low experience, but not too limiting for higher experience levels)
- Familiar to previous competitors and current volunteers

## What does the 2015 kit not do right?

- Not all hardware features are implemented in software
- No functionality to remotely deliver firmware updates to kit hardware
- No documented way to deliver software updates
    - Lead to not being updated since 2015
    - Stuck on Python 2
    - Probably full of security holes (though the kit never sees the internet, so this probably isn’t actually a disaster)
    - Ancient Fedora
- Security:
    - User code runs as root
    - We can’t actually stop teams from using the wireless interfaces to do remote control
    - Uses an unregistered domain name for the web interface
- Software updates are limited in what they can do
    - Not possible to update e.g. sr-init
    - They have to be small enough to be downloaded in every robot.zip
- Custom init daemon written in Python
- New Brain board is unobtainable
- Kit reboots on every single run of code
    - ...and this is a problem because boot is s l o w
- Web interface uses ancient and no-longer-implemented standards, and doesn’t work on modern browsers
- Safety should be a priority
    - Motors should be turned off on error
    - When USB to the motor board is stopped, do the motors stop?

## What should the new kit do?

- Implement feature parity where possible, unless we explicitly remove a feature.
- Build images for multiple embedded boards
    - ODROID
    - Raspberry Pi
- Use a distro with a support cycle of at least 2 years
- Boot time under 20 seconds
    - SB kit managed 8 seconds from power to start flash
- Provide a supported method to load code onto the robot using a standard IDE, offline.
- Maintain best security practices where possible
    - Follow ETSI 303 645 standard
- Students should be able to modify the distro (maybe rollback-able?) so they can learn about linux if they want to.
- Provide limited support for common hardware that is not provided by us:
    - Only hardware that is cheap to obtain, so that teams with more money do not gain an unfair advantage
    - Ultrasound sensors
    - Common stepper motor drivers
    - IMUs
- Support a wider range of PWM for servo board, maybe adjustable range?
    - Requires firmware update to servo board.
- Web interface:
    - Software start button
    - Development zone setting
    - Live log views
- Competition mode indicators?
    - Robocon style
    - Logs
    - Has crashed?
 - Remote python debugger support?
- Kit Team debug package button
    - i.e “My robot is broken”, so they send us a zip full of systemd logs and similar. 
- Allow teams to request python libraries per robot (i.e include in robot.zip)
