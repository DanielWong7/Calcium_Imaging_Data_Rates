# Calcium Imaging Data Rates

Data, plotting code and bibliography for the figure *Maximum reported calcium imaging data rate by year of publication*, used in the BioBIS 2027 extended abstract **"The Need For Calcium Imaging Acceleration"**.

The plot is a step plot of reported calcium imaging data rates in MB/s, by year of publication, with one point per source paper.

## Repository contents

| Path | Description |
|---|---|
| `GraphCode.m` | MATLAB script that plots the data-rate figure |
| `DataRates.pdf` | Exported figure |
| `RawData.csv` | Source data and notes used to calculate each rate |
| `references.bib` | BibTeX entries for the source papers |

## Data

`GraphCode.m` stores each data rate in **bits per second** and plots it in **MB/s** using

```
MB/s = (bits per second) / 8 / 1e6        (1 MB = 10^6 bytes)
```

| Year | Data rate (bit/s) | Data rate (MB/s) | Source |
|---|---|---|---|
| 1986 | 6,553,600 | 0.82 | Connor, *PNAS* 83 |
| 1990 | 791,347,200 | 98.92 | Sugimori and Llinás, *PNAS* 87 |
| 1998 | 1,575,936,000 | 196.99 | Fetcho et al., *Histochem. J.* 30 |
| 2013 | 2,222,222,222 | 277.78 | Ahrens et al., *Nat. Methods* 10 |
| 2017 | 6,635,520,000 | 829.44 | Nöbauer et al., *Nat. Methods* 14 |
| 2019 | 12,700,000,000 | 1,587.50 | Kazemipour et al., *Nat. Methods* 16 |
| 2021 | 24,640,976,000 | 3,080.12 | Shao et al., *Quant. Imaging Med. Surg.* 11 |
| 2025 | 39,239,680,000 | 4,904.96 | Wang et al., *Nat. Methods* 22 |

## Reproducing the figure

Requires MATLAB (R2021a or later, for `LineWidth=` name-value syntax and `exportgraphics`).

```matlab
GraphCode            % draws the figure
```

## Notes and limitations

- Rates are the maximum reported by each paper's imaging system, not sustained rates in typical experiments.
- Where a paper does not state a data rate, it was calculated from the reported frame size, frame rate and bit depth; see `RawData.csv`.

## Citing this repository

If you use this data or code, please cite the archived release:

```
D. S. M. Wong and A. M. S. Abdelhadi, Calcium imaging data rates, GitHub repository, 2026, DOI: [Zenodo DOI]
```

BibTeX:

```bibtex
@misc{CalciumImagingDataRates,
  author       = {Wong, Daniel S. M. and Abdelhadi, Ammer M. S.},
  title        = {Calcium Imaging Data Rates},
  year         = {2026},
  publisher    = {GitHub},
  howpublished = {\url{https://github.com/DanielWong7/Calcium_Imaging_Data_Rates}},
  doi          = {[Zenodo DOI]}
}
```

The figure and data support the BioBIS 2027 extended abstract "The Need For Calcium Imaging Acceleration".
