cat << EOF > m7.top
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
Model7: 40 IPC + 32 POPI + 32 DOPC + 40 ERG + 40 w/l + extended chains

[ molecules ]
IPC  40
POPI 32
DOPC 32
Ergosterol  40
AOPI 32
BOPI 16
LOPI 8
AOPC 32
BOPC 16
LOPC 8
NA   128
SOL  10240
EOF
