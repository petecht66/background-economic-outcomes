* ECON306 Final Paper

* Dependent variable to analyze
sum coll_pooled_pooled_mean, detail

* T test for this variable
ttest coll_pooled_pooled_mean == 0.333

* Bivariate regression
regress coll_pooled_pooled_mean par_rank_pooled_pooled_mean, robust

* sum first predictor variable
sum par_rank_pooled_pooled_mean, detail

* Scatter plot with fitted line
twoway (scatter coll_pooled_pooled_mean par_rank_pooled_pooled_mean) (lfit coll_pooled_pooled_mean par_rank_pooled_pooled_mean)

* sum first control variable
sum two_par_pooled_pooled_mean, detail

* MLR with one key control variable
regress coll_pooled_pooled_mean par_rank_pooled_pooled_mean two_par_pooled_pooled_mean, robust

* MLR with two key control variables
regress coll_pooled_pooled_mean par_rank_pooled_pooled_mean two_par_pooled_pooled_mean teenbrth_pooled_female_mean, robust

* MLR with three key control variables
regress coll_pooled_pooled_mean par_rank_pooled_pooled_mean two_par_pooled_pooled_mean teenbrth_pooled_female_mean hs_pooled_pooled_mean, robust

* Final MLR
regress coll_pooled_pooled_mean par_rank_pooled_pooled_mean teenbrth_pooled_female_mean hs_pooled_pooled_mean, robust
test par_rank_pooled_pooled_mean teenbrth_pooled_female_mean hs_pooled_pooled_mean

* Nonlinear regression
scatter coll_pooled_pooled_mean teenbrth_pooled_female_mean
generate teenbrth_squared = teenbrth_pooled_female_mean^2
regress coll_pooled_pooled_mean teenbrth_pooled_female_mean	teenbrth_squared
