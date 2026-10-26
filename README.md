# BREATHE Clinical Academic Group

Open archive of the BREATHE Clinical Academic Group (NTNU / St. Olavs hospital, Trondheim University Hospital, Norway): research protocols, analysis plans, grant applications, ethics (REK) documentation and analysis code for our research on asthma and COPD. The aim is transparency about what we plan and do, and that our analyses can be scrutinised and reproduced.

**This repository never contains data.** Individual-level data from HUNT, health registries or medical records are kept only on approved secure platforms, in line with the ethics approvals and agreements with the data owners. See [What does not belong here](#what-does-not-belong-here).

## Structure

```
projects/
  <project>/
    README.md           Short project summary: ethics approval number, period and status
    protocol/           Research protocol (tracked changes, clean version, markdown)
    rek/                Applications and amendments to the Regional Committee for Medical and Health Research Ethics (REK)
    analysis-plans/     Pre-specified analysis plans per sub-study
    scripts/            Analysis code
templates/              Templates shared across projects
```

## Projects

| Project | REK | Period | Status |
| --- | --- | --- | --- |
| [Lung function trajectories from adolescence to adulthood – the HUNT Lung Study](projects/hunt-lung-trajectories-rek96306/) | 96306 | 2020–2030 (extension applied for) | Ongoing |

## What does not belong here

- Individual-level data, including pseudonymised data and aggregated tables with small cells (n < 5)
- Linkage keys, project ID lists, or file paths to secure servers
- Personal information about others (CVs, signatures, contact details) without their consent
- Drafts that have not been cleared with co-authors or collaborators

`.gitignore` blocks common data formats, but always check before you commit.

## Contact

Sigrid Anna Aalberg Vikjord, Department of Thoracic and Occupational Medicine, St. Olavs hospital, Trondheim University Hospital, and Norwegian University of Science and Technology (NTNU), Trondheim, Norway
