# Git & GitHub

We use [git][git] and [GitHub][github] for a lot of our collaborative work.
Git is a version control system which allows contributors to view a full history
of our work (whether it's source code for software, designs for our kit hardware
or something else) as well as for their contributions to add to that history.
GitHub provides us with an online platform which is openly readable by everyone
as well as allowing for review of contributions to share knowledge and maintain
quality.

A full user guide to either tool is well beyond the scope of the runbook, though
it is worth outlining some aspects of our approach.

## Contribution

In general we prefer that published history is preserved. This means that while
you're free to use `rebase` locally to tidy up your commits before review, any
commits which have been pushed should not be modified without very good reason.

Like the majority of open source projects the vast majority of contributions
will be made through a personal clone on GitHub (what GitHub calls a "fork"),
rather than directly to the repo. Maintainers who do have direct access to repos
are strongly encouraged to follow this approach as well, in order to ensure that
this workflow works for everyone rather than ending up with two classes of
contributors.

## Repositories

We have a large number of repositories and so consideration should be given
before any more are created. As we are in the process of moving from another
hosting solution (`cgit` on a server of our own) to GitHub, this is doubly the
case as there may be an existing but not-yet migrated repository which should be
used.

For content which varies by year (for example the rules of the competition game
or arena layout) we prefer to have a single repository which either has a single
linear history (such as the rules) or a number of directories named for the year
(e.g: `sr2019`). This allows for easy comparison of changes by year,
facilitating iterations for future years, as well as preventing a proliferation
of year-specific repositories.
A notable exception to this is the competition state ("compstate") repos, which
are unusual in that the compstate _is_ the repo, rather than being _within_ the
repo.


[git]: https://git-scm.org
[github]: https://github.com/srobo
