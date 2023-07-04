# basic production model with commitment
# Objective: cx # Total_profit
# Constraints: 
#	ax <= b; # Time
#	x <= u; # Market
#	x >= v; # Commitment
			
set p;

param a {j in p}; 
param b;
param c	{j in p};
param u {j in p};
param v {j in p};

var x {j in p};

maximize Total_profit : sum {j in p} c[j]*x[j];

subject to Time: sum{j in p} a[j]*x[j] <= b;
subject to Limit_upper {j in p}: x[j] <= u[j];
subject to Limit_lower {j in p}: x[j] >= v[j];