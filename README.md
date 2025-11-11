# Hierarchical Linear Modeling (HLM)

**Author:** Dr. Fariborz Aref  
**Discipline:** Quantitative Sociology · Inequality Research  
**Date:** November 2025  
**License:** MIT  

---

### Overview
Multilevel models allow us to capture both **individual-level variation** and **contextual effects** across nations, institutions, or communities.  
This repository contains reproducible R scripts, datasets, and output summaries for analyzing inequality trajectories using **Hierarchical Linear Models (HLMs)**.

---

### Structure
HLM/
├── hlm_run.R # main script for multilevel models
├── hlm_input.csv # dataset (individual & contextual variables)
├── out/
│ ├── hlm_fixed_effects.csv
│ ├── hlm_random_effects.csv
│ └── hlm_model_comparison.csv
└── figs/
├── hlm_country_slopes.png
├── hlm_variance_partition.png
└── hlm_residual_diagnostics.png


---

### Key Methods
- Two-level and three-level models using `lme4::lmer`
- Contextual predictors (GDP, inequality indices, policy variables)
- Cross-level interactions for moderating effects
- Variance Partition Coefficients (VPC / ICC)
- Model diagnostics and influence analysis

---

### Example (R)
```r
library(lme4)
model <- lmer(outcome ~ age + income + education + gdp_pc + 
              (1 + income | country), data = oecd_panel)
summary(model)
