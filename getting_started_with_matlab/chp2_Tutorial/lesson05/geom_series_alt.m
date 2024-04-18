function s = geom_series_alt(n, x)
nvec = 0:n; 
series = x.^nvec; 
s = sum(series);
