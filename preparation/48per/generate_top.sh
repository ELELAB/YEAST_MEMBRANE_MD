cat << EOF > m6.top
#include "slipids.ff/forcefield.itp"
#include "slipids.ff/ipc_heavyh.itp"
#include "slipids.ff/popi_heavyh.itp"
#include "slipids.ff/aopi_heavyh.itp"
#include "slipids.ff/bopi_heavyh.itp"
#include "slipids.ff/lopi_heavyh.itp"
#include "slipids.ff/dopc_heavyh.itp"
#include "slipids.ff/aopc_heavyh.itp"
#include "slipids.ff/bopc_heavyh.itp"
#include "slipids.ff/lopc_heavyh.itp"
#include "slipids.ff/ergosterol_heavyh.itp"
#include "slipids.ff/ions.itp"
#include "slipids.ff/tip3p.itp"

[ system ]
Model6: 40 IPC + 46 POPI + 46 DOPC + 40 ERG + 40 w/l + extended chains

[ molecules ]
IPC  40
POPI 46
DOPC 46
Ergosterol  40
AOPI 24
BOPI 12
LOPI 6
AOPC 24
BOPC 12
LOPC 6
NA   128
SOL  10240
EOF
