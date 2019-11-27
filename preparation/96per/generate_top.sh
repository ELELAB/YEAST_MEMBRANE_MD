cat << EOF > m8.top
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
Model8: 40 IPC + 4 POPI + 4 DOPC + 40 ERG + 40 w/l + extended chains

[ molecules ]
IPC  40
POPI 4
DOPC 4
Ergosterol  40
AOPI 48
BOPI 24
LOPI 12
AOPC 48
BOPC 24
LOPC 12
NA   128
SOL  10240

EOF
