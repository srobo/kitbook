# Student Robotics Volunteer RunBook

[![CircleCI](https://circleci.com/gh/srobo/runbook.svg?style=svg)](https://circleci.com/gh/srobo/runbook)

The runbook aims to be a single source for all Student Robotics internal
documentation. This includes information for the [Competition Team][competition-team]
and [Kit Team][kit-team], as well as other activities.

[competition-team]: https://opsmanual.studentrobotics.org/annual-robotics-competition/competition-programme-team
[kit-team]: https://opsmanual.studentrobotics.org/v/master/annual-robotics-competition/kit-team

## Installation

In order to bootstrap this project you'll need:

- Python (`>=3.5`)
- `pip`
- `pipenv` (`pip install pipenv`)

## Usage

### Installing dependencies

```
pipenv install --dev
```

### Running development server

```
pipenv run serve
```

This will launch a server on http://localhost:8000. Content in the server will live-reload as changes are made. If large refactors of the site structure are made, it's advisable to stop the server, make the changes, then restart it.

### Production build

```
pipenv run build
```

This will build the site once, and place it in `site/` in the root of the project. This may be useful to see which files are rendered, and how exactly to access them.

### Tests

There are some rudimentary tests in the project. These are all run by the CI, and must pass before deployment.

```
pipenv run lint-yaml  # Checks the yaml content is well formatted
```


## License

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-sa/4.0/ or send a letter to Creative
Commons, PO Box 1866, Mountain View, CA 94042, USA.
