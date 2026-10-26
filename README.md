# BREATHE Clinical Academic Group

Åpent arkiv for BREATHE CAG (NTNU / St. Olavs hospital): forskningsprotokoller, analyseplaner, søknader, REK-dokumentasjon og analysekode. Formålet er åpenhet om hva vi planlegger og gjør, og at analyser kan etterprøves.

**Repositoriet inneholder aldri data.** Individdata fra HUNT, helseregistre eller pasientjournal oppbevares kun på godkjente sikre plattformer i tråd med REK-godkjenning og avtaler med dataeierne. Se [Hva som ikke skal hit](#hva-som-ikke-skal-hit).

## Struktur

```
projects/
  <prosjekt>/
    README.md           Kort om prosjektet, REK-nummer, periode og status
    protocol/           Forskningsprotokoll (sporede endringer, ren versjon, markdown)
    rek/                Søknader og endringsmeldinger til REK
    analysis-plans/     Forhåndsregistrerte analyseplaner per delstudie
    registry-linkage/   Variabellister og bestillinger (metadata, ikke data)
    scripts/            Analysekode
templates/              Maler som går igjen på tvers av prosjekter
```

## Prosjekter

| Prosjekt | REK | Periode | Status |
| --- | --- | --- | --- |
| [Lungefunksjonsbaner fra ungdom til voksen alder – HUNT Lunge](projects/hunt-lung-trajectories-rek96306/) | 96306 | 2020 – 2030 (forlengelse søkt) | Pågår |

## Hva som ikke skal hit

- Individdata, også pseudonymiserte og aggregerte tabeller med små celler (n < 5)
- Koblingsnøkler, PID-lister, filbaner til sikre soner
- Personopplysninger om andre (CV-er, signaturer, kontaktinformasjon) uten samtykke
- Utkast som ikke er klarert med medforfattere eller samarbeidspartnere

`.gitignore` blokkerer vanlige dataformater, men sjekk alltid selv før du committer.

## Kontakt

Sigrid Anna Aalberg Vikjord, NTNU / St. Olavs hospital
