---
layout: page
title: Pull Request Template
permalink: /pages/prtemplate.html
---

## About

I used a template similar to this at Sun Microsystems.
Let me know if you find this useful. I hope you can
tailor it to suit your needs. This template mostly useful
for small product increments or product fixes. Features
that required more than a day or two of development effort
went thru a formal design review process.

Note that this process was used in a context where the
developer and testing teams were separate, and a
mini-waterfall process was followed. This is hopefully
no longer the norm and shorter feedback loops are
followed.

## Process

The process that accompanied this template was as follows:

* Developer has a ticket assigned in the issue tracking system
* Developer researches the issue and proposes a solution often
captured within the issue ticket itself to allow other team members to comment on the proposed solution
* Once the agreement is reached, developer implements the solution. If more than one viable option is available, then subject matter experts are consulted. The implementation includes creating automated tests whenever possible, or providing notes on manual regression testing.
* Developer assesses if any cross-functional concerns also need to be addressed. This process may be part of finding the optimal solution or after. Typical concerns in our context were security, scalability, performance, accessibility, internationalization/localization, supportability, and maintainability.
* Developer authors proposed release notes text and checks to see if any product documentation updates - including screenshot changes - are also necessary.
* Finally, a code review with the following template is filled out and sent to to the team for review.
* Developer incorporate any suggested, agreed changes, and possibly revises the code review content accordingly.
* Developer incorporates code change into the product, watches any CI/CD failures and addresses them if necessary.
* Issue in the tracking system is updated with final code review template to assist the testing team to validate fixes

## Template

Part of the reason why the team felt that a very verbose template was
necessary is to force developers to think of all the consequences
of their changes. In many cases, some sections did not apply. In those
situations, the developers simply added an `N/A` to the template.
The mere fact that they had to type this into the template forced that
consideration process.

```text
Summary: <one-sentence description of the change>
Ticket ID: <reference of the issue ID in the ticketing system>

Proposed Solution: <description of the changes in detail>

Alternatives Considered: <alternatives considered and why they were not viable>

Release Notes: <proposed text to incorporate into the product release notes visible to customers>

Documentation Updates: <list and type of documentation changes needed and reference to the documentation ticket assigned to the documentation team>

Product Code Changes: <list of files of product code changes>
Test Changes/Additions: <list of automated tests added/changed>

Performance/Scalability Impact: <detail any impact
on the performance / scalability of the product and how this was
tested / confirmed>

Localization/Internationalization Impact: <any changes that may impact
the localization process, any new message catalog keys that need to be
translated, etc>

Sustainability/Maintainability Impact: <include any new considerations that impact product upgrades, any new 3rd party library dependencies, any other consideration that the support team should be aware of>

Security Considerations: <any security considerations tested, taken into account with the product change>

```
