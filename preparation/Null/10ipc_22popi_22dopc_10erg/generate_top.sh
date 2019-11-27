cat << EOF > system.top
#include "slipids.ff/forcefield.itp"
#include "slipids.ff/ipc.itp"
#include "slipids.ff/popi.itp"
#include "slipids.ff/dopc.itp"
#include "slipids.ff/ergosterol.itp"
#include "slipids.ff/ions.itp"
#include "slipids.ff/tip3p.itp"

[ system ]
10 IPC + 22 POPI + 22 DOPC + 10 ERG + 40 w/l

[ molecules ]
IPC  10
POPI 22
DOPC 22
Ergosterol  10
NA   32
SOL  2560
EOF

