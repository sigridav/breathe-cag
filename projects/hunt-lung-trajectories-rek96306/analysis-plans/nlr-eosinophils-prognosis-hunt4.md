# Analysis plan: NLR × eosinophils and prognosis in HUNT4

Version: 26.10.2026 · Sigrid Vikjord

## Aims

The study has two equally weighted primary questions, both answered in HUNT4 with registry follow-up.

1. **Prognosis in COPD:** Do the neutrophil-to-lymphocyte ratio (NLR) and blood eosinophils, separately and in interaction, predict severe exacerbations and death in people with COPD, beyond established predictors including CAT and mMRC?
2. **COPD specificity:** Are the associations stronger in people with COPD than in people with normal spirometry, and stronger for respiratory than for cardiovascular outcomes?

The clinical claim the study can support is that a routine leukocyte differential count gives prognostic information that symptoms and lung function do not capture.

## Study population

Participants in HUNT4 (2017–19) with pre-bronchodilator spirometry and a leukocyte differential count, approximately 15,000 people. The main analysis compares two groups; other spirometry patterns are kept outside.

| Group | Definition | Role |
| --- | --- | --- |
| COPD | FEV1/FVC < LLN (GLI, pre-BD) and respiratory symptoms (daily cough for periods, productive cough or wheeze in the last 12 months) or physician-diagnosed COPD/emphysema | Main group, questions 1 and 2 |
| Normal spirometry | FEV1/FVC, FEV1 and FVC all ≥ LLN | Comparison, question 2 |
| Obstruction without symptoms or diagnosis | FEV1/FVC < LLN, neither symptoms nor diagnosis | Outside the main analysis |
| PRISm | FEV1/FVC ≥ LLN but FEV1 < LLN | Outside the main analysis |

Participants with asthma are kept in both groups and adjusted for. Participants without spirometry of acceptable quality or without a complete differential count are excluded. The number with COPD under this definition must be counted; approximately 4,000 is an estimate.

Participants reporting a respiratory infection on the day of examination, or daily use of oral corticosteroids in the last 3 months, are excluded from the main analysis. Both directly affect NLR and eosinophil counts.

## Exposure

NLR (neutrophils/lymphocytes) and absolute eosinophil count (cells/µL) from the same blood sample, modelled in two equally weighted ways.

- **Continuous interaction:** log-NLR and eosinophils as restricted cubic splines with a tensor-product interaction. Results are presented as risk surfaces (contour plots), so that any "balanced zone" can be identified directly.
- **2×2 phenotypes:** high/low NLR × high/low eosinophils, for clinical interpretation. Proposed a priori cut-offs: eosinophils ≥ 300 cells/µL (GOLD) and NLR ≥ 3. Group medians in the COPD group are used as a sensitivity analysis.

Cut-offs should be locked before outcome data are analysed.

## Outcomes and follow-up

Two separate outcome families, both from registries. Death and severe exacerbations are reported as equally weighted primary outcomes.

| Outcome | Definition | Source |
| --- | --- | --- |
| Severe exacerbation | First hospitalisation with COPD (J44) as main diagnosis | Norwegian Patient Registry (NPR) |
| All-cause death | All deaths | Cause of Death Registry |
| Respiratory death | Underlying cause of death J00–J99 | Cause of Death Registry |
| Cardiovascular death | Underlying cause of death I00–I99 | Cause of Death Registry |

Cardiovascular death also serves as a specificity check: a COPD-specific signal should be stronger for respiratory than for cardiovascular outcomes. Follow-up runs from the HUNT4 participation date to event, death, emigration or end of registry data. With the current linkage, Cause of Death Registry data end on 31.12.2021, giving only 2–4.5 years of follow-up for death. An updated extract should be requested before the analysis. The current NPR extract has admission date but not discharge date or level of care, so hospitalisations cannot yet be distinguished from outpatient contacts.

## Covariates

Models are built in three steps so that association and added value can be separated.

| Model | Content | Purpose |
| --- | --- | --- |
| 1 | Age, sex | Basic association |
| 2 | Model 1 + smoking (status and pack-years), BMI, FEV1 % predicted, CRP, comorbidity (cardiovascular disease, diabetes, cancer, kidney disease, autoimmune disease), asthma, atopy (allergy/hay fever), inhaled medication by class | Adjusted association |
| Base model for prediction | Age, sex, smoking, BMI, FEV1 % predicted, CAT, mMRC, comorbidity, Charlson index (NPR), previous COPD hospitalisations in NPR since 2008, self-reported exacerbations in the last 12 months | Measure what NLR and eosinophils add |

The HUNT4 Lung questionnaire records inhalers by class, so ICS/LABA combinations can be adjusted for. This matters because ICS lowers the eosinophil count. ICS monotherapy is not listed, so some ICS use may be misclassified. Triple inhalers were not on the market during HUNT4.

CAT and mMRC were answered only by participants with asthma, COPD or breathlessness. In symptom-free participants they are therefore structurally missing and should not be imputed as ordinary missing data.

## Statistical analysis

The analysis first addresses prognosis within COPD, then COPD specificity in the full sample.

**Question 1 – prognosis within COPD**

- All-cause death: Cox regression.
- Exacerbation, respiratory and cardiovascular death: cause-specific Cox, with Fine-Gray (competing risks) as a supplement.
- The NLR × eosinophil interaction is tested with a likelihood ratio test of the tensor term. Proportional hazards are checked with Schoenfeld residuals.
- Added value is measured against the base model: ΔC (Harrell's C and time-dependent AUC at 5 years), continuous NRI, calibration and decision curve analysis.
- Internal validation by bootstrapping (≥ 200 replicates) with optimism correction.

**Question 2 – COPD specificity**

- Full sample (COPD + normal spirometry) with a three-way interaction NLR × eosinophils × group, or stratified models with a test for heterogeneity.
- Hazard ratios are reported per group and per cause of death, so that respiratory and cardiovascular outcomes can be compared directly.

Missing covariates are handled by multiple imputation; the exposure is not imputed.

## Sensitivity analyses

Each analysis tests one specific weakness of the main design.

| Analysis | Weakness tested |
| --- | --- |
| COPD defined as FEV1/FVC < 0.70 | Choice of COPD definition |
| Exclude participants with asthma | Misclassification with pre-BD spirometry |
| Exclude CRP > 10 mg/L | Subclinical infection at sampling |
| Exclude the first year of follow-up | Reverse causation |
| NLR and eosinophil cut-offs set at the median | Choice of cut-off |
| All respiratory hospitalisations (J00–J99) | Narrow exacerbation definition |
| Recurrent hospitalisations (Andersen-Gill or negative binomial) | Only the first event is used |
| Stratified by use of ICS-containing inhalers | Effect of ICS on eosinophil count |
| Exclude corticosteroid injections in the last 12 months | Steroid effect on blood counts |
| PRISm and asymptomatic obstruction as separate groups (exploratory) | Groups kept outside the main analysis |

## Open issues

To be resolved before the analysis starts.

- [x] NPR data from before HUNT4 are available (from 2008), and the Charlson index is linked.
- [x] Amendment to REK (96306) submitted 26.10.2026: extended end date, new sub-study on NLR × eosinophils and prognosis, Norwegian Drug Registry, NPR extended to all diagnoses, and the Cause of Death Registry listed explicitly.
- [ ] Request an updated Cause of Death Registry extract (current linkage ends 31.12.2021).
- [ ] Obtain discharge date and level of care (inpatient, day case, outpatient) from NPR, and clarify the end date of the NPR data.
- [ ] Emigration date from the National Population Register for censoring.
- [ ] Was the skip logic for CAT and mMRC followed in practice, and how many in the normal spirometry group answered?
- [ ] Lock the a priori cut-offs for NLR and eosinophils.
- [ ] Count events per outcome in the COPD group to judge how many parameters the models can support.
- [ ] External validation: is OLIN an option?
