# Analyseplan: NLR × eosinofiler og prognose i HUNT4

Versjon: 26.10.2026 · Sigrid Vikjord

## Mål

Studien har to likestilte hovedspørsmål, begge besvart i HUNT4 med registeroppfølging.

1. **Prognose ved kols:** Predikerer NLR og blodeosinofiler, hver for seg og i samspill, alvorlige eksaserbasjoner og død hos personer med kols, utover etablerte prediktorer inkludert CAT og mMRC?
2. **Kolsspesifisitet:** Er sammenhengene sterkere hos personer med kols enn hos personer med normal spirometri, og sterkere for respiratoriske enn for kardiovaskulære utfall?

Den kliniske påstanden studien kan underbygge, er at en rutinemessig differensialtelling gir prognostisk informasjon som symptomer og lungefunksjon ikke fanger.

## Studiepopulasjon

Utgangspunktet er deltakere i HUNT4 (2017–19) med pre-BD spirometri og differensialtelling, rundt 15 000 personer. Hovedanalysen sammenligner to grupper; øvrige spirometrimønstre holdes utenfor.

| Gruppe | Definisjon | Rolle |
| --- | --- | --- |
| Kols | FEV1/FVC < LLN (GLI, pre-BD) og luftveissymptomer (daglig hoste i perioder, hoste med oppspytt eller pipelyder siste 12 mnd) eller legediagnostisert kols/emfysem | Hovedgruppe, spørsmål 1 og 2 |
| Normal spirometri | FEV1/FVC, FEV1 og FVC alle ≥ LLN | Sammenligning, spørsmål 2 |
| Obstruksjon uten symptomer eller diagnose | FEV1/FVC < LLN, verken symptomer eller diagnose | Utenfor hovedanalysen |
| PRISm | FEV1/FVC ≥ LLN, men FEV1 < LLN | Utenfor hovedanalysen |

Astma beholdes i begge grupper og justeres for. Personer uten spirometri av akseptabel kvalitet eller uten fullstendig differensialtelling ekskluderes. Antallet med kols etter denne definisjonen må telles opp; rundt 4000 er et anslag.

Personer som oppgir luftveisinfeksjon på undersøkelsesdagen, eller som har brukt kortisontabletter daglig de siste 3 månedene, ekskluderes fra hovedanalysen. Begge påvirker NLR og eosinofiltall direkte.

## Eksponering

NLR (nøytrofile/lymfocytter) og absolutt eosinofiltall (celler/µL) fra samme blodprøve, modellert på to likestilte måter.

- **Kontinuerlig samspill:** log-NLR og eosinofiler som restricted cubic splines, med et tensorprodukt-samspill. Resultatet presenteres som risikooverflater (konturplott), slik at en eventuell «balansert sone» kan identifiseres direkte.
- **2×2-fenotyper:** høy/lav NLR × høy/lav eos, for klinisk tolkning. Forslag til a priori-grenser: eos ≥ 300 celler/µL (GOLD) og NLR ≥ 3. Gruppemedianer i kolsgruppen brukes som sensitivitetsanalyse.

Grensene bør låses før utfallsdataene analyseres.

## Utfall og oppfølging

To separate utfallsfamilier, begge fra register. Død og alvorlige eksaserbasjoner rapporteres som likestilte hovedutfall.

| Utfall | Definisjon | Kilde |
| --- | --- | --- |
| Alvorlig eksaserbasjon | Første innleggelse med kols (J44) som hoveddiagnose | NPR |
| Død, alle årsaker | All død | Dødsårsaksregisteret |
| Respiratorisk død | Underliggende dødsårsak J00–J99 | Dødsårsaksregisteret |
| Kardiovaskulær død | Underliggende dødsårsak I00–I99 | Dødsårsaksregisteret |

Kardiovaskulær død fungerer også som spesifisitetskontroll: et kolsspesifikt signal bør være sterkere for respiratoriske enn for kardiovaskulære utfall. Oppfølgingen løper fra deltakelsesdato i HUNT4 til hendelse, død, utflytting eller slutt på registerdata. Med dagens kobling slutter Dødsårsaksregisteret 31.12.2021, altså bare 2–4,5 års oppfølging for død. En oppdatert utlevering fra DÅR bør bestilles før analysen. NPR-utleveringen har inndato, men ikke utdato eller omsorgsnivå, så innleggelser kan ennå ikke skilles fra polikliniske kontakter.

## Kovariater

Modellene bygges i tre trinn, slik at assosiasjon og tilleggsverdi kan skilles.

| Modell | Innhold | Formål |
| --- | --- | --- |
| 1 | Alder, kjønn | Grunnleggende assosiasjon |
| 2 | Modell 1 + røyking (status og pakkeår), BMI, FEV1 % pred, CRP, komorbiditet (hjerte-kar, diabetes, kreft, nyre, autoimmun sykdom), astma, atopi (allergi/høysnue), inhalasjonsmedisiner etter klasse | Justert assosiasjon |
| Basismodell for prediksjon | Alder, kjønn, røyking, BMI, FEV1 % pred, CAT, mMRC, komorbiditet, Charlson-indeks (NPR), tidligere kolsinnleggelser i NPR fra 2008, selvrapporterte eksaserbasjoner siste 12 mnd | Måle hva NLR og eos tilfører |

Lungeskjemaet skiller inhalatorer etter klasse, så ICS/LABA-kombinasjoner kan justeres for. Det er viktig fordi ICS senker eosinofiltallet. ICS-monoterapi står ikke på listen, så noe ICS-bruk kan bli feilklassifisert. Trippelinhalatorer var ikke på markedet under HUNT4.

CAT og mMRC besvares bare av dem med astma, kols eller pustebesvær. Hos symptomfrie mangler de altså strukturelt og bør ikke imputeres som vanlig manglende data.

## Statistisk analyse

Analysen tar først for seg prognose innen kols, deretter kolsspesifisitet i hele utvalget.

**Spørsmål 1 – prognose innen kols**

- Død av alle årsaker: Cox-regresjon.
- Eksaserbasjon, respiratorisk og kardiovaskulær død: årsaksspesifikk Cox, med Fine-Gray (konkurrerende risiko) som supplement.
- Samspill NLR × eos testes med likelihood ratio-test av tensorleddet. Proporsjonale hasarder sjekkes med Schoenfeld-residualer.
- Tilleggsverdi måles mot basismodellen: ΔC (Harrell og tidsavhengig AUC ved 5 år), kontinuerlig NRI, kalibrering og decision curve-analyse.
- Intern validering med bootstrap (≥ 200 replikater) og optimisme-korreksjon.

**Spørsmål 2 – kolsspesifisitet**

- Hele utvalget (kols + normal spirometri) med tre-veis samspill NLR × eos × gruppe, eller stratifiserte modeller med heterogenitetstest.
- HR rapporteres per gruppe og per dødsårsak, slik at respiratoriske og kardiovaskulære utfall kan sammenlignes direkte.

Manglende kovariater håndteres med multippel imputasjon; eksponeringen imputeres ikke.

## Sensitivitetsanalyser

Hver analyse tester én bestemt svakhet ved hoveddesignet.

| Analyse | Svakhet som testes |
| --- | --- |
| Kols definert som FEV1/FVC < 0,70 | Valg av kolsdefinisjon |
| Ekskluder personer med astma | Feilklassifisering ved pre-BD spirometri |
| Ekskluder CRP > 10 mg/L | Subklinisk infeksjon ved prøvetaking |
| Ekskluder første oppfølgingsår | Omvendt kausalitet |
| NLR- og eos-grenser satt ved median | Valg av cut-off |
| Alle respiratoriske innleggelser (J00–J99) | Smal definisjon av eksaserbasjon |
| Gjentatte innleggelser (Andersen-Gill eller negativ binomial) | Bare første hendelse brukes |
| Stratifisert på bruk av ICS-holdige inhalatorer | Effekt av ICS på eosinofiltall |
| Ekskluder bruk av kortisonsprøyte siste 12 mnd | Steroideffekt på blodbildet |
| PRISm og asymptomatisk obstruksjon som egne grupper (eksplorativt) | Grupper holdt utenfor hovedanalysen |

## Åpne punkter

Disse må avklares før analysen starter.

- [x] NPR-data fra før HUNT4 finnes (fra 2008), og Charlson-indeks er koblet på.
- [ ] Bestill oppdatert utlevering fra Dødsårsaksregisteret (dagens kobling slutter 31.12.2021).
- [ ] Få utdato og omsorgsnivå (døgn, dag, poliklinikk) fra NPR, og avklar sluttdato for NPR-dataene.
- [ ] Utflyttingsdato fra Folkeregisteret for sensurering.
- [ ] Ble skip-logikken for CAT og mMRC fulgt i praksis, og hvor mange i normalgruppen har svart?
- [ ] Lås a priori-grensene for NLR og eos.
- [ ] Tell antall hendelser per utfall i kolsgruppen, for å vurdere hvor mange parametre modellene tåler.
- [ ] Ekstern validering: er OLIN aktuelt?

- [ ] Endringsmelding til REK (søknad 96306): forlenget sluttdato, nytt delprosjekt om NLR × eos og prognose, Legemiddelregisteret, NPR utvidet til alle diagnoser, og Dødsårsaksregisteret oppført eksplisitt.
