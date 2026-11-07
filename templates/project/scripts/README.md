# Analysis code

One folder per sub-study, scripts numbered in run order (`00_master.do`, `01_data.do`, `02_analysis.do`, `03_tables_figures.do`).

Scripts read data from the secure platform via a local path set in `config_local.do`, which is kept outside the repository (see `config_local_EXAMPLE.do`). Result tables with cells below n = 5 must not be committed.
