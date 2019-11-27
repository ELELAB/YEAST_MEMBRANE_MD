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
Model5: 40 IPC + 81 POPI + 81 DOPC + 20 ERG + 40 w/l + extended chains

[ molecules ]
IPC  40
POPI 53
DOPC 53
Ergosterol  40
AOPI 20
BOPI 10
LOPI 5
AOPC 20
BOPC 10
LOPC 5
NA   128
SOL  10240

EOF
