# This file will be used to define all nodes


# Define x-direction wood panel nodes
# Story1
node	11011	    80.040	     0.000	     0.000;
node	11012	    80.040	    24.000	     0.000;
node	11021	   240.000	     0.000	     0.000;
node	11022	   240.000	    24.000	     0.000;
node	11031	   399.960	     0.000	     0.000;
node	11032	   399.960	    24.000	     0.000;
node	11041	    80.040	     0.000	   360.000;
node	11042	    80.040	    24.000	   360.000;
node	11051	   240.000	     0.000	   360.000;
node	11052	   240.000	    24.000	   360.000;
node	11061	   399.960	     0.000	   360.000;
node	11062	   399.960	    24.000	   360.000;

# Story2
node	21011	   240.000	    24.000	     0.000;
node	21012	   240.000	   132.000	     0.000;
node	21021	   240.000	    24.000	   360.000;
node	21022	   240.000	   132.000	   360.000;
node	21031	   276.000	    24.000	   192.000;
node	21032	   276.000	   132.000	   192.000;
node	21041	   276.000	    24.000	   138.000;
node	21042	   276.000	   132.000	   138.000;
node	21051	   426.000	    24.000	    72.000;
node	21052	   426.000	   132.000	    72.000;

puts "x-direction wood panel nodes defined"

# Define z-direction wood panel nodes
# Story1
node	13011	     0.000	     0.000	    60.000;
node	13012	     0.000	    24.000	    60.000;
node	13021	     0.000	     0.000	   180.000;
node	13022	     0.000	    24.000	   180.000;
node	13031	     0.000	     0.000	   300.000;
node	13032	     0.000	    24.000	   300.000;
node	13041	   480.000	     0.000	    60.000;
node	13042	   480.000	    24.000	    60.000;
node	13051	   480.000	     0.000	   180.000;
node	13052	   480.000	    24.000	   180.000;
node	13061	   480.000	     0.000	   300.000;
node	13062	   480.000	    24.000	   300.000;

# Story2
node	23011	     0.000	    24.000	   180.000;
node	23012	     0.000	   132.000	   180.000;
node	23021	   480.000	    24.000	   180.000;
node	23022	   480.000	   132.000	   180.000;
node	23031	   210.000	    24.000	    72.000;
node	23032	   210.000	   132.000	    72.000;
node	23041	   276.000	    24.000	   276.000;
node	23042	   276.000	   132.000	   276.000;
node	23051	   378.000	    24.000	   138.000;
node	23052	   378.000	   132.000	   138.000;

puts "z-direction wood panel nodes defined"


# Define main leaning column nodes
node	1000	     0.000	     0.000	     0.000;
node	2000	     0.000	    24.000	     0.000;
node	3000	     0.000	   132.000	     0.000;

node	1100	   240.000	     0.000	     0.000;
node	2100	   240.000	    24.000	     0.000;
node	3100	   240.000	   132.000	     0.000;

node	1200	   480.000	     0.000	     0.000;
node	2200	   480.000	    24.000	     0.000;
node	3200	   480.000	   132.000	     0.000;

node	1300	     0.000	     0.000	   180.000;
node	2300	     0.000	    24.000	   180.000;
node	3300	     0.000	   132.000	   180.000;

node	1400	   240.000	     0.000	   180.000;
node	2400	   240.000	    24.000	   180.000;
node	3400	   240.000	   132.000	   180.000;

node	1500	   480.000	     0.000	   180.000;
node	2500	   480.000	    24.000	   180.000;
node	3500	   480.000	   132.000	   180.000;

node	1600	     0.000	     0.000	   360.000;
node	2600	     0.000	    24.000	   360.000;
node	3600	     0.000	   132.000	   360.000;

node	1700	   240.000	     0.000	   360.000;
node	2700	   240.000	    24.000	   360.000;
node	3700	   240.000	   132.000	   360.000;

node	1800	   480.000	     0.000	   360.000;
node	2800	   480.000	    24.000	   360.000;
node	3800	   480.000	   132.000	   360.000;

puts "main leaning column nodes defined"

# Define leaning column top nodes for zero length springs
node	1001	     0.000	     0.000	     0.000;
node	2001	     0.000	    24.000	     0.000;

node	1101	   240.000	     0.000	     0.000;
node	2101	   240.000	    24.000	     0.000;

node	1201	   480.000	     0.000	     0.000;
node	2201	   480.000	    24.000	     0.000;

node	1301	     0.000	     0.000	   180.000;
node	2301	     0.000	    24.000	   180.000;

node	1401	   240.000	     0.000	   180.000;
node	2401	   240.000	    24.000	   180.000;

node	1501	   480.000	     0.000	   180.000;
node	2501	   480.000	    24.000	   180.000;

node	1601	     0.000	     0.000	   360.000;
node	2601	     0.000	    24.000	   360.000;

node	1701	   240.000	     0.000	   360.000;
node	2701	   240.000	    24.000	   360.000;

node	1801	   480.000	     0.000	   360.000;
node	2801	   480.000	    24.000	   360.000;

# Define leaning column bottom nodes for zero length springs
node	2002	     0.000	    24.000	     0.000;
node	3002	     0.000	   132.000	     0.000;

node	2102	   240.000	    24.000	     0.000;
node	3102	   240.000	   132.000	     0.000;

node	2202	   480.000	    24.000	     0.000;
node	3202	   480.000	   132.000	     0.000;

node	2302	     0.000	    24.000	   180.000;
node	3302	     0.000	   132.000	   180.000;

node	2402	   240.000	    24.000	   180.000;
node	3402	   240.000	   132.000	   180.000;

node	2502	   480.000	    24.000	   180.000;
node	3502	   480.000	   132.000	   180.000;

node	2602	     0.000	    24.000	   360.000;
node	3602	     0.000	   132.000	   360.000;

node	2702	   240.000	    24.000	   360.000;
node	3702	   240.000	   132.000	   360.000;

node	2802	   480.000	    24.000	   360.000;
node	3802	   480.000	   132.000	   360.000;

puts "Leaning column nodes for zero length spring defined"
