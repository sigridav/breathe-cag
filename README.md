# BREATHE Clinical Academic Group

Open archive of the BREATHE Clinical Academic Group (NTNU / St. Olavs hospital, Trondheim University Hospital, Norway): research protocols, analysis plans, grant applications, ethics (REK) documentation and analysis code for our research on asthma and COPD. The aim is transparency about what we plan and do, and that our analyses can be scrutinised and reproduced.

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
manuscripts/            Manuscripts and analyses not yet linked to a REK folder
studies/                Clinical studies and cohorts
registries/             Quality registries (variable lists, codebooks)
applications/           Grant applications
tools/                  Digital tools
outreach/               Books and opinion pieces
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

### Manuscripts and analyses (REK reference to be added)

- [Blood eosinophils, FEV1 % predicted and COPD exacerbations (HUNT4 Lung)](manuscripts/eosinophils-ppfev1-copd-exacerbations/)
- [Gut microbiome and lung function (HUNT4 and SCAPIS)](manuscripts/gut-microbiome-lung-function/)
- [Non-COVID morbidity and mortality during the pandemic – interrupted time series (HUNT)](manuscripts/hunt-covid-interrupted-time-series/)
- [Spirometry and medication use around the first COPD diagnosis in Norwegian general practice](manuscripts/copd-diagnosis-general-practice-kuhr/)
- [Hospital-treated lower respiratory tract infections and lung function decline](manuscripts/lrti-lung-function-decline/)
- [Adolescent smoking (Young-HUNT) and later lung function](manuscripts/adolescent-smoking-lung-function/)
- [Height-GaP and lung function](manuscripts/height-gap-lung-function/)
- [Genome-wide association study of oxygen saturation (SpO2) in HUNT4](manuscripts/spo2-gwas-hunt4/)
- [Lung function, SpO2 and dementia (HUNT4, age 70+)](manuscripts/lung-function-dementia/)
- [KCO deficit – a volume-corrected measure of gas transfer](manuscripts/kco-deficit/)
- [Spirometric curve shapes: artefacts and pathology (mini-review)](manuscripts/spirometry-curve-shapes-review/)
- [Is there T2-high COPD? (Tidsskriftet)](manuscripts/t2-high-copd/)
- [Non-treatable traits in COPD](manuscripts/non-treatable-traits-copd/)

### Clinical studies and cohorts

- [NOR-LUNG 1 – de-escalation of treatment in severe T2-high asthma](studies/nor-lung-1/)
- [CPET before lung cancer surgery – randomised trial](studies/cpet-preoperative-lung-cancer/)
- [NORTUNE (AsthmaTuner) – St. Olav's site](studies/nortune/)
- [EOS – immune processes in severe asthma](studies/eos-severe-asthma/)
- [Prevent ECOPD](studies/prevent-ecopd/)
- [HUNT5 Lung](studies/hunt5-lung/)

### Registries

- [Norwegian COPD Registry 2.0 (Kolsregisteret 2.0)](registries/copd-registry-2/)
- [Norwegian Severe Asthma Registry](registries/severe-asthma-registry/)

### Grant applications

- [ERC Starting Grant 2028 – proteomics and lung function](applications/erc-starting-grant-2028/)
- [FRIPRO Early Career – protein modules predicting incident COPD](applications/fripro-proteogenomics/)
- [Horizon Europe – AI-based predictive biomarkers (CADSET)](applications/horizon-biomarkers-cadset/)
- [DESCEND – de-escalation in chronic airway disease (St. Olav's «Kloke valg» call)](applications/descend-wise-choices/)
- [Using the full information content of pulmonary function tests (Samarbeidsorganet)](applications/so-pulmonary-physiology/)
- [NTNU Health and Life Sciences interdisciplinary team (AMR)](applications/ntnu-hlv-team-amr/)

### Tools

- [ILD-MDT Navigator](tools/ild-mdt-navigator/)
- [AsthmaTrack](tools/asthmatrack/)
- [pustebedre.no](tools/pustebedre/)

### Books and outreach

- [Statistics in health sciences – for dummies](outreach/statistics-book/)
- [Pulmonary function test interpretation – for dummies](outreach/pulmonary-function-interpretation-book/)
- [Opinion pieces](outreach/opinion-pieces/)

## What does not belong here

- Individual-level data, including pseudonymised data and aggregated tables with small cells (n < 5)
- Linkage keys, project ID lists, or file paths to secure servers
- Personal information about others (CVs, signatures, contact details) without their consent
- Drafts that have not been cleared with co-authors or collaborators

`.gitignore` blocks common data formats, but always check before you commit.

## Contact

Sigrid Anna Aalberg Vikjord, Department of Thoracic Medicine, Clinic of Thoracic and Occupational Medicine and Orkdal Dept. of Internal Medicine, St. Olav's hospital, Trondheim University Hospital, and Norwegian University of Science and Technology (NTNU), Trondheim, Norway
