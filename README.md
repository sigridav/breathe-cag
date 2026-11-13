# BREATHE Clinical Academic Group

Open archive of the BREATHE Clinical Academic Group (NTNU / St. Olavs hospital, Trondheim University Hospital, Norway): research protocols, analysis plans, ethics (REK) documentation and analysis code for our research on asthma and COPD. The aim is transparency about what we plan and do, and that our analyses can be scrutinised and reproduced.

**This repository never contains data.** Individual-level data from HUNT, health registries or medical records are kept only on approved secure platforms, in line with the ethics approvals and agreements with the data owners. See [What does not belong here](#what-does-not-belong-here).

## Structure

```
projects/               REK-approved projects (one folder per REK approval)
  <project>/
    README.md           Short project summary: ethics approval number, period and status
    protocol/           Research protocol (tracked changes, clean version, markdown)
    rek/                Applications and amendments to the Regional Committee for Medical and Health Research Ethics (REK)
    analysis-plans/     Pre-specified analysis plans per sub-study
    scripts/            Analysis code
studies/                Clinical studies and cohorts
registries/             Quality registries (variable lists, codebooks)
templates/project/      Template for a new project (copy and rename)
shared/                 Code shared across projects (e.g. Stata programs)
```

## Projects

| Project | REK | Period | Status |
| --- | --- | --- | --- |
| [Lung function trajectories from adolescence to adulthood – the HUNT Lung Study](projects/hunt-lung-trajectories-rek96306/) | 96306 | 2020–2030 (extension applied for) | Ongoing |
| [Circulating inflammatory protein networks and the development of COPD](projects/inflammatory-proteins-copd-rek1022757/) | 1022757 | 01.07.2026 – 31.12.2029 | Approved with conditions |
| [Anosmia and peripheral eosinophilia as early biomarkers of incident asthma and CRSwNP](projects/anosmia-eosinophilia-asthma-crswnp-rek999556/) | 999556 | 01.05.2026 – 01.05.2029 | Approved with conditions |
| [Dietary patterns and longitudinal lung function](projects/dietary-patterns-lung-function-rek825816/) | 825816 | 01.11.2024 – 31.12.2026 | Approved with conditions |
| [Lung function trajectories and radiological phenotypes in obstructive lung disease (HUNT CT LUNG)](projects/hunt-ct-lung-rek819936/) | 819936 | 23.09.2024 – 31.12.2027 | Approved with conditions |
| [Body mass index and mortality in individuals with and without COPD](projects/bmi-mortality-copd-rek227444/) | 227444 | 15.04.2024 – 15.04.2026 | Approved with conditions |
| [Is decline in lung function associated with decline in bone mineral density?](projects/lung-function-bone-density-rek120785/) | 120785 | 25.01.2021 – 31.12.2025 | Approved with conditions |
| [Organisation and funding of acute COPD care: consequences of the proposals in NOU 2026: 12](projects/acute-copd-care-nou-2026-12-rek1055922/) | 1055922 | – | Under REK assessment |


### Clinical studies and cohorts

- [NOR-LUNG 1 – de-escalation of treatment in severe T2-high asthma](studies/nor-lung-1/)
- [CPET before lung cancer surgery – randomised trial](studies/cpet-preoperative-lung-cancer/)
- [NORTUNE (AsthmaTuner) – St. Olav's site](studies/nortune/)
- [EOS – immune processes in severe asthma](studies/eos-severe-asthma/)
- [Prevent ECOPD](studies/prevent-ecopd/)
- [HUNT5 Lung](studies/hunt5-lung/)

### Shared resources

- [Lung-relevant variables in the HUNT Study (HUNT1–4, HUNT South, Young-HUNT1–4)](shared/hunt-lung-variables/)

### Registries

- [Norwegian COPD Registry 2.0 (Kolsregisteret 2.0)](registries/copd-registry-2/)
- [Norwegian Severe Asthma Registry](registries/severe-asthma-registry/)




## What does not belong here

- Individual-level data, including pseudonymised data and aggregated tables with small cells (n < 5)
- Linkage keys, project ID lists, or file paths to secure servers
- Personal information about others (CVs, signatures, contact details) without their consent
- Drafts that have not been cleared with co-authors or collaborators
- Manuscripts in preparation, grant applications, tools, books and opinion pieces (kept in a separate private repository)

`.gitignore` blocks common data formats, but always check before you commit.

## Contact

Sigrid Anna Aalberg Vikjord, Department of Thoracic Medicine, Clinic of Thoracic and Occupational Medicine and Orkdal Dept. of Internal Medicine, St. Olav's hospital, Trondheim University Hospital, and Norwegian University of Science and Technology (NTNU), Trondheim, Norway
