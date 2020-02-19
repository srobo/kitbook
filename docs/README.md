# Home

Welcome to our runbook. This aims to be a single source for all Student Robotics
internal documentation, including information for the [Competition Team][competition-team]
and [Kit Team][kit-team] as well as other activities.

## Content Guidance

The runbook aims to document all the Student Robotics specific information which
a volunteer might need. This includes the historic context for the way that
things are currently done, the reasons behind that approach, as well as the
instructions on how to do things.

In that regard, the runbook aims to be _descriptive_ rather than _prescriptive_.
We are always open to new ways to do things, though by recording the reasons
for our current approach we aim to avoid needing to rediscover that repeatedly.

### Scope Limitations

The runbook aims to provide general information as far as our own specific
information goes, so that it can always be a starting point for understanding.
There are many cases where it should not contain the actual documentation:

* Information about Student Robotics' structure as a charity. This instead is
  documented by the trustees in the [ops manual][ops-manual].
* Detailed information about internal (or external) tooling. These instead live
  with the tooling so that the runbook is not coupled tightly to the
  development of that tooling.
  Note: the runbook _may_ contain guidance on our approach to using external
  tooling, or recipes for using tooling which are common to us but too specific
  for general documentation.

## A note on links

`mkdocs` has the power to resolve and validate links, however only when they're in a specific format. Links to pages inside the runbook should be relative, and end with the `.md` file extension (ie `[some other page](./kit-team/README.md)` produces [some other page](./kit-team/README.md)). This way, `mkdocs` will correctly validate these links. Links which don't follow this format are not validated.

[competition-team]: https://opsmanual.studentrobotics.org/annual-robotics-competition/competition-team
[kit-team]: https://opsmanual.studentrobotics.org/annual-robotics-competition/kit-team
[ops-manual]: https://opsmanual.studentrobotics.org
