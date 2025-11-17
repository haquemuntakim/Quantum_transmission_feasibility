# DLCZ Feasibility Rebuilt (CPU-Only)

Self-contained environment for feasibility analysis with:
- Reproducible seeds & artifact stamping
- Kendall's tau -> Pearson rho copula (PSD-repaired)
- Corrected link, swap, and rate calculations
- Plotly + ipywidgets UI (marginal configuration + detailed report)
- Explicit purge of all prior widgets/figures each run to eliminate duplicates

## Setup (Windows PowerShell)
```
cd feasibility_rebuilt
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
jupyter notebook
```
Open `main.ipynb` and run cells top-to-bottom.

### Quickstart (one-liner, Windows PowerShell)
```powershell
python -m venv .venv; .\.venv\Scripts\Activate.ps1; pip install -r requirements.txt; jupyter notebook
```

## Setup (macOS/Linux bash)
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
jupyter notebook
```

## Artifacts
Saved JSON exports placed in `results/` only when you click the save button; no auto writes.

## Purge Strategy
Each UI cell begins by closing previously created widgets and figures, preventing accumulation and repeated plots.

## Re-run Guidance
If anything appears duplicated:
1. Re-run the first environment/purge cell.
2. Re-run the marginal UI cell.
3. Re-run the feasibility report cell.

## Next Extensions
- Confidence intervals for R distribution
- Sensitivity metrics using proper Spearman correlation (SciPy)
