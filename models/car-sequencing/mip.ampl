# Car sequencing problem in AMPL formulated as a MIP problem.
# http://www.csplib.org/Problems/prob001/

model common.ampl;

# optionAtPosition[o, p] specifies whether option o is used at position p.
var optionAtPosition{o in Options, p in Positions} =
  sum{c in Classes: Require[c, o]} build[c, p];

# Number of cars built with option o per block b
var numCarsPerBlock{o in Options, b in Blocks[o]} =
  sum{s in 1..BlockSize[o]} optionAtPosition[o, b + s - 1];

# Number of violations in block b for option o
var numViolationsPerBlock{o in Options, b in Blocks[o]} >= 0;

s.t. violationsPerBlock{o in Options, b in Blocks[o]}:
  numViolationsPerBlock[o, b] >= numCarsPerBlock[o, b] - MaxCarsInBlock[o];

# Minimize the total number of violations.
minimize numViolations:
  sum{o in Options, b in Blocks[o]} numViolationsPerBlock[o, b];
