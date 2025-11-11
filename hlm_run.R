
---

### Quick Example (R)
```r
library(lme4)
library(lmerTest)
library(performance)

# Two-level model: individuals nested within countries
model <- lmer(
  outcome ~ age + income + education + gdp_pc + (1 + income | country),
  data = oecd_panel
)

# Summary with significance tests
summary(model)

# Random effects and variance partition
performance::icc(model)

# Save outputs
write.csv(broom.mixed::tidy(model), "out/hlm_fixed_effects.csv", row.names = FALSE)
