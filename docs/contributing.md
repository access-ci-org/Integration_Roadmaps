<div align="center">

# Contributing

[Documentation][documentation] • [Getting help][getting-help] • [Contributing](#contribution-conventions)

</div>

---
    
### Table of Contents

+ [Introduction](#introduction)
+ [Where can I help?](#where-can-i-help)
+ [Reporting issues](#issues-reporting)
+ [Requesting features](#requesting-features)
+ [Contribution conventions](#contribution-conventions)
+ [Contributing code](#contributing-code)
+ [Contributing documentation](#contributing-documentation)
+ [GitHub workflow](#github-workflow)
+ [Read the Docs](#read-the-docs)

# Introduction

Our [Code of Conduct can be found here](https://support.access-ci.org/code-conduct).

# Where can I help?

To _get_ help please see [Getting help][getting-help].

To _provide_ help, we welcome any kind of help including [reporting issues](#reporting-issues), [requesting features](#requesting-features), and making [documentation contributions](#contributing-documentation) following the [contribution conventions](#contribution-conventions).

# Reporting issues

+ Search [ACCESS integration roadmaps issues tracker](https://github.com/access-ci-org/Integration_Roadmaps/issues/)
in case your issue was already reported.

TODO mention recommended wording, tags, etc

# Requesting feature(s)
# Contribution conventions

This repository follows the [GitHub flow](#github-flow) model as a workflow for collaborating.

## Branch naming recommendation

When [creating a branch](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository#creating-a-branch), adding the author's name and then a descriptive branch name of the intended commits can be helpful to categorize and track changes:

`user/clear-purpose-of-proposed-changes` (e.g. `mollycule/add-readthedocs-contribute-doc`)

# Contributing code

In order to contribute to the [Integration Roadmaps documentation][documentation], you must first be part of the [access-ci-org organization][ACCESS GitHub organization].

## GitHub -> Read the Docs workflow
In order to contribute to the workflow between the GitHub repo and Read the Docs, you must request to become a maintainer by creating an issue stating your:

+ full name
+ GitHub account name
+ ACCESS affilliation

# Contributing documentation

## For Integration Roadmaps documentation

# Submitting pull requests


## Locally

problem -> create topic branch -> submit pull request -> await approval

TODO add blurb about recommended comment style (maybe just link to something, GitHub, and quote?)

## GitHub web interface 

# Read the Docs

## Test locally

```
# Create a Python virtual environment and activate it
virtualenv venv
source venv/bin/activate

# Go to docs/ directory
cd docs/

# Install Python dependencies
pip install -r requirements.txt

# Build documentation
make html
```

Then, you can see the output in your web browser at `Integration_Roadmaps/docs/build/html/index.html`.

include images


## Test Topic Branch in ReadtheDocs instance

(FUTURE) TODO

[ACCESS GitHub organization]: https://github.com/access-ci-org
[ACCESS main page]: https://access-ci.org/
[ACCESS rt]: https://tickets.access-ci.org/
[ACCESS slack]: https://access-ci.slack.com
[documentation]: https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/
[getting-help]: https://github.com/access-ci-org/Integration_Roadmaps/tree/main/docs#getting-help 
[github-flow]: https://docs.github.com/en/get-started/quickstart/github-flow
[integration roadmaps]: https://operations.access-ci.org/pub/integration_roadmaps
[read the docs]: https://docs.readthedocs.io/en/stable/
[resource providers]: https://allocations.access-ci.org/resource-providers
[wg-integration-roadmaps]: https://app.slack.com/client/T03EW8N9B6Y/C03JSSLABUY
