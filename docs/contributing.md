<div align="center">

# Contributing

[Documentation][documentation] • [Getting help](#getting-help)

</div>

---

### Table of Contents

+ [Introduction](#introduction)
+ [Getting help](#getting-help)
+ [GitHub workflow](#github-workflow)
+ [Read the Docs](#read-the-docs)

# Introduction

We welcome contributions of any kind in the form of [catching a problem](##how-to-report-an-issue), [wanting to fix a problem](#), or [giving a virtual thanks over Slack](TODO fix README.md Slack info to be a section & reference here)!

Our [Code of Conduct can be found here](https://support.access-ci.org/code-conduct).

# Getting help

* TODO reference README.md#getting-help

* (FUTURE) TODO troubleshooting guide?

## How to report an issue

+ Search [ACCESS integration roadmaps issues tracker](https://github.com/access-ci-org/Integration_Roadmaps/issues/)
in case your issue was already reported.

maybe a decision tree diagram? graphviz+dot?

# GitHub workflow

https://docs.github.com/en/get-started/quickstart/github-flow

TODO will _definitely_ need a walk-through of rebasing main

images?

## Locally

problem -> create topic branch -> submit pull request -> await approval

TODO add blurb about recommended comment style (maybe just link to something, GitHub, and quote?)

## GitHub web interface 

## Branch naming recommendation

"user/clear-purpose-of-proposed-changes" (e.g. `mollycule/add-readthedocs-contribute-doc`)

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

[documentation]: https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/
[ACCESS main page]: https://access-ci.org/
[ACCESS rt]: https://tickets.access-ci.org/
[ACCESS slack]: https://access-ci.slack.com
[integration roadmaps]: https://operations.access-ci.org/pub/integration_roadmaps
[read the docs]: https://docs.readthedocs.io/en/stable/
[resource providers]: https://allocations.access-ci.org/resource-providers
[wg-integration-roadmaps]: https://app.slack.com/client/T03EW8N9B6Y/C03JSSLABUY
