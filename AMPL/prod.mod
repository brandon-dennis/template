# basic production model
# Objective: cx # Total_profit
# Constraints: 
#	ax <= b; # Resource
#	x <= u; # Market
			
set p;

param a {j in p}; 
param b;
param c	{j in p};
param u {j in p};

var x {j in p};

maximize Total_profit : sum {j in p} c[j]*x[j];

subject to Time: sum{j in p} a[j]*x[j] <= b;
subject to Limit {j in p}: x[j] <= u[j];
