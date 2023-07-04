# multiple resource production model with commitment
# Objective: cx # Total_profit
# Constraints: 
#	ax <= b; # Resource
#	x <= u; # Market
#	x >= v; # Commitment

			
set p; # Products
set r; # Resources

param a {p,r}; 
param b {r};
param c	{p};
param u {p};
param v {p};

var x {i in p};

maximize Total_profit : sum {i in p} c[i]*x[i];

subject to Resource {j in r}: sum{i in p} a[i,j]*x[i] <= b[j];
subject to Limit_upper {i in p}: x[i] <= u[i];
subject to Limit_lower {i in p}: x[i] >= v[i];