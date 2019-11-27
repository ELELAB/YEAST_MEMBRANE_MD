cat << EOF > m1.top
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
Model2: 40 IPC + 81 POPI + 81 DOPC + 20 ERG + 40 w/l + extended chains

[ molecules ]
IPC  40
POPI 74
DOPC 74
Ergosterol  40
AOPI 8
BOPI 4
LOPI 2
AOPC 8
BOPC 4
LOPC 2
NA   128
SOL  10240

EOF
