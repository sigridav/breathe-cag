* ============================================================
* BREATHE / HUNT Lung – shared Stata programs
* Usage:  do "shared/stata/hl_programs.do"
* ============================================================

* Airflow obstruction by fixed ratio, graded by FEV1 % predicted
*   hl_obstruction fev1 fvc fev1pp
* Creates: ratio, obstr_fr (FEV1/FVC < 0.70), obstr_grade (0–4)
capture program drop hl_obstruction
program define hl_obstruction
    args fev1 fvc fev1pp
    capture drop ratio obstr_fr obstr_grade
    gen ratio = `fev1' / `fvc'
    gen byte obstr_fr = ratio < 0.70 if !missing(ratio)
    label var obstr_fr "Airflow obstruction, fixed ratio FEV1/FVC < 0.70"
    gen byte obstr_grade = 0 if obstr_fr == 0
    replace obstr_grade = 1 if obstr_fr == 1 & `fev1pp' >= 80 & !missing(`fev1pp')
    replace obstr_grade = 2 if obstr_fr == 1 & `fev1pp' >= 50 & `fev1pp' < 80
    replace obstr_grade = 3 if obstr_fr == 1 & `fev1pp' >= 30 & `fev1pp' < 50
    replace obstr_grade = 4 if obstr_fr == 1 & `fev1pp' < 30
    label define obstr_grade 0 "No obstruction" 1 "Mild (FEV1 >=80%)" 2 "Moderate (50-79%)" ///
        3 "Severe (30-49%)" 4 "Very severe (<30%)", replace
    label values obstr_grade obstr_grade
    label var obstr_grade "Severity, FEV1 % predicted"
end
