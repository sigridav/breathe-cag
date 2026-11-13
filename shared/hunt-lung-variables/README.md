# Lung-relevant variables in the HUNT Study

Overview of all lung-relevant variables across HUNT1–4, HUNT South (HUNT4 South-Trøndelag) and Young-HUNT1–4, taken from the public variable catalogue in the [HUNT Databank](https://hunt-db.medisin.ntnu.no/hunt-db/). It is meant as a starting point when planning analyses and data applications. It contains variable metadata only, no participant data.

| | |
| --- | --- |
| Source | HUNT Databank, public variable list (15,466 variables) |
| Extracted | 13 November 2026 |
| Variables included | 1,600 |
| Maintained by | Sigrid Anna Aalberg Vikjord |

## Files

- [hunt.md](hunt.md) – HUNT1–4 and HUNT South (1,018 variables), by round and category
- [young-hunt.md](young-hunt.md) – Young-HUNT1–4 (582 variables), by round and category

## Variables per category and round

| Category | HUNT1 (1984–86) | HUNT2 (1995–97) | HUNT3 (2006–08) | HUNT4 (2017–19) | HUNT4 South-Trøndelag (HUNT South) | Young-HUNT1 (1995–97) | Young-HUNT2 (2000–01) | Young-HUNT3 (2006–08) | Young-HUNT4 (2017–19) | Total |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Lung function (spirometry) |  | 64 | 15 | 71 |  | 29 | 15 | 19 |  | 213 |
| Bronchial provocation, FeNO & exercise test |  | 15 |  |  |  | 34 |  |  |  | 49 |
| Oxygen saturation (SpO2) |  |  |  | 3 | 2 |  |  |  |  | 5 |
| Respiratory symptoms & disease control | 2 | 38 | 92 | 28 | 26 | 74 | 24 | 20 | 3 | 307 |
| Diagnoses & disease history |  | 15 | 29 | 8 | 8 | 34 | 12 | 13 | 2 | 121 |
| Medication | 6 | 63 | 61 | 10 | 7 | 44 | 23 | 36 |  | 250 |
| Smoking, snus & passive smoke | 12 | 24 | 76 | 47 | 44 | 37 | 29 | 32 | 19 | 320 |
| Exposure (occupation, environment, animals, infection) |  | 10 | 42 | 1 |  | 4 | 4 | 4 |  | 65 |
| Allergy, rhinitis & sinuses |  | 15 | 12 | 9 | 6 | 12 | 12 | 11 | 3 | 80 |
| Blood tests (eosinophils, IgE) |  | 9 |  | 2 |  | 13 |  |  |  | 24 |
| Family history |  | 6 | 8 | 6 | 3 |  |  |  |  | 23 |
| Chest X-ray | 20 |  |  |  |  |  |  |  |  | 20 |
| Echocardiography (pulmonary) |  |  | 19 | 12 |  |  |  |  |  | 31 |
| Fitness test (expired gas) |  |  | 9 | 4 |  |  |  |  |  | 13 |
| Sleep (snoring, apnoea) |  |  | 2 | 6 | 8 |  |  |  |  | 16 |
| COVID-19 |  |  |  | 3 | 3 |  |  |  |  | 6 |
| Health care use & administrative |  | 16 | 16 | 5 |  | 5 | 6 | 9 |  | 57 |
| **Total** | 40 | 275 | 381 | 215 | 107 | 286 | 125 | 144 | 27 | **1600** |

## How the list was built

1. All 15,466 variables were retrieved from the HUNT Databank.
2. **Core:** every variable in the databank groups Lung function, Respiratory Tract Diseases, Respiratory medication, Respiratory Physiological Phenomena, Respiratory System Agents, Smoking, Tobacco Smoke Pollution, Tobacco Smokeless, Inhaled allergen screening, Sinusitis, X-ray and Oxygen Saturation.
3. **Lung sub-study:** all other variables from the HUNT Lung and Young-HUNT spirometry, provocation and exercise test study parts.
4. **Related:** variables in other groups whose text mentions lung-related terms (asthma, COPD, wheeze, dyspnoea, cough, smoking, occupational dust/gas/fumes, hay fever, eosinophils, IgE, SpO2 and similar), after manual removal of obvious false positives.
5. Each variable was assigned one category by its name and text, and a source type (questionnaire, interview, measurement) from its study part code.

## Caveats

- Categories are assigned by us, not by HUNT, and a few may be misclassified.
- Some variables sit in unexpected databank groups (for example SpO2 in HUNT4 is under *Blood pressure*); other lung variables in such groups may have been missed.
- Exhaled NO in HUNT2 Lung phase 4 was measured as tidal NO (1995–97), not as FeNO at 50 mL/s.
- Some Young-HUNT1 provocation variables have auto-generated English titles in the databank; check the Norwegian question text there.
- `n` is the number with a value as shown in the databank; counts below 5 are shown as <5.

## Change log

- 2026-11: First version.
