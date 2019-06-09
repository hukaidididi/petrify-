.outputs Rout Ain Lt
.inputs Rin Aout
.graph

Rin+ Rout+
Rout+ Lt+
Rout+ Aout+
Lt+ Ain+
Aout+ Rout-
Ain+ Rin-
Rin- Rout-
Rout- Lt-
Rout- Aout-
Lt- Ain-
Aout- Rout+
Ain- Rin+


.marking {<Aout-,Rout+> <Ain-,Rin+>}
.end
