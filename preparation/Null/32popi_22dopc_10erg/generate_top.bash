cat << EOF > system.top
#include "slipids.ff/forcefield.itp"
#include "slipids.ff/popi.itp"
#include "slipids.ff/dopc.itp"
#include "slipids.ff/ergosterol.itp"
#include "slipids.ff/ions.itp"
#include "slipids.ff/tip3p.itp"

[ system ]
32 POPI + 22 DOPC + 10 ERG + 40 w/l

[ molecules ]
POPI 32
DOPC 22
Ergosterol  10
NA   32
SOL  2560
EOF

