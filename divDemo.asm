#include "includes\ti84pce.inc"

 .assume ADL=1
 .org userMem-2
 .db tExtTok,tAsm84CeCmp

   ld a, 10
   ld b, 3
   ld c, -1
_: sub b
   inc c
   jr nc, -_
   add a, b
   ld hl, 0
   ld l, a
   call _DispHL
   ld l, c
   call _DispHL
   ret
