datatype CACHE_STATE = I| S| E
datatype MSG_CMD = Empty| ReqS| ReqE| Inv| InvAck| GntS| GntE
type NODE=nat
type DATA=nat
type boolean=bool




method n_SendInv__part__0inv__29_0(Chan2_Cmd:array<MSG_CMD>,    CurCmd:array<MSG_CMD>,  InvSet:array<boolean>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires CurCmd.Length==N0

requires InvSet.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<InvSet.Length&&0<=j<InvSet.Length==>InvSet[i]!=InvSet[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
requires (!((InvSet[p__Inv2] == true) && (ShrSet[p__Inv2] == false)))//3
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && (CurCmd[0] == ReqE)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies InvSet

{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}

method n_SendInv__part__0inv__29_1(Chan2_Cmd:array<MSG_CMD>,    CurCmd:array<MSG_CMD>,  InvSet:array<boolean>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires CurCmd.Length==N0

requires InvSet.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<InvSet.Length&&0<=j<InvSet.Length==>InvSet[i]!=InvSet[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && (CurCmd[0] == ReqE)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies InvSet

{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}


method n_SendInv__part__1inv__29_0(Chan2_Cmd:array<MSG_CMD>,    CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, InvSet:array<boolean>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires InvSet.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<InvSet.Length&&0<=j<InvSet.Length==>InvSet[i]!=InvSet[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
requires (!((InvSet[p__Inv2] == true) && (ShrSet[p__Inv2] == false)))//3
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && ((CurCmd[0] == ReqS) && (ExGntd[0] == true))) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies InvSet

{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}

method n_SendInv__part__1inv__29_1(Chan2_Cmd:array<MSG_CMD>,    CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, InvSet:array<boolean>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires InvSet.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<InvSet.Length&&0<=j<InvSet.Length==>InvSet[i]!=InvSet[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && ((CurCmd[0] == ReqS) && (ExGntd[0] == true))) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies InvSet

{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}


method n_SendInvAckinv__29_0(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  Chan3_Cmd:array<MSG_CMD>, Chan3_Data:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_Data.Length==N0


requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires Chan3_Cmd.Length==N0
requires Chan3_Data.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]


requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<Chan3_Cmd.Length&&0<=j<Chan3_Cmd.Length==>Chan3_Cmd[i]!=Chan3_Cmd[j]
requires forall i,j::0<=i<Chan3_Data.Length&&0<=j<Chan3_Data.Length==>Chan3_Data[i]!=Chan3_Data[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
//1
requires ((Chan2_Cmd[i] == Inv) && (Chan3_Cmd[i] == Empty)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan3_Cmd
modifies Chan3_Data

{
  Chan2_Cmd[i] := Empty;
  Chan3_Cmd[i] := InvAck;
  if (Cache_State[i] == E) {
    Chan3_Data[i] := Cache_Data[i];
  }
  Cache_State[i] := I;
}

method n_SendInvAckinv__29_1(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  Chan3_Cmd:array<MSG_CMD>, Chan3_Data:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_Data.Length==N0


requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires Chan3_Cmd.Length==N0
requires Chan3_Data.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]


requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<Chan3_Cmd.Length&&0<=j<Chan3_Cmd.Length==>Chan3_Cmd[i]!=Chan3_Cmd[j]
requires forall i,j::0<=i<Chan3_Data.Length&&0<=j<Chan3_Data.Length==>Chan3_Data[i]!=Chan3_Data[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires ((Chan2_Cmd[i] == Inv) && (Chan3_Cmd[i] == Empty)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan3_Cmd
modifies Chan3_Data

{
  Chan2_Cmd[i] := Empty;
  Chan3_Cmd[i] := InvAck;
  if (Cache_State[i] == E) {
    Chan3_Data[i] := Cache_Data[i];
  }
  Cache_State[i] := I;
}


method n_RecvInvAckinv__29_0(Chan2_Cmd:array<MSG_CMD>,   Chan3_Cmd:array<MSG_CMD>,  Chan3_Data:array<DATA>, CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0


requires Chan3_Cmd.Length==N0

requires Chan3_Data.Length==N0
requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]


requires forall i,j::0<=i<Chan3_Cmd.Length&&0<=j<Chan3_Cmd.Length==>Chan3_Cmd[i]!=Chan3_Cmd[j]

requires forall i,j::0<=i<Chan3_Data.Length&&0<=j<Chan3_Data.Length==>Chan3_Data[i]!=Chan3_Data[j]
requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<MemData.Length&&0<=j<MemData.Length==>MemData[i]!=MemData[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (Chan3_Cmd[p__Inv2] == InvAck)))//3
requires ((Chan3_Cmd[i] == InvAck) && (!(CurCmd[0] == Empty))) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan3_Cmd
modifies Chan3_Data
modifies ExGntd
modifies MemData
modifies ShrSet

{
  Chan3_Cmd[i] := Empty;
  ShrSet[i] := false;
  if (ExGntd[0] == true) {
    ExGntd[0] := false;
    MemData[0] := Chan3_Data[i];
  }
}

method n_RecvInvAckinv__29_1(Chan2_Cmd:array<MSG_CMD>,   Chan3_Cmd:array<MSG_CMD>,  Chan3_Data:array<DATA>, CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0


requires Chan3_Cmd.Length==N0

requires Chan3_Data.Length==N0
requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]


requires forall i,j::0<=i<Chan3_Cmd.Length&&0<=j<Chan3_Cmd.Length==>Chan3_Cmd[i]!=Chan3_Cmd[j]

requires forall i,j::0<=i<Chan3_Data.Length&&0<=j<Chan3_Data.Length==>Chan3_Data[i]!=Chan3_Data[j]
requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<MemData.Length&&0<=j<MemData.Length==>MemData[i]!=MemData[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires ((Chan3_Cmd[i] == InvAck) && (!(CurCmd[0] == Empty))) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan3_Cmd
modifies Chan3_Data
modifies ExGntd
modifies MemData
modifies ShrSet

{
  Chan3_Cmd[i] := Empty;
  ShrSet[i] := false;
  if (ExGntd[0] == true) {
    ExGntd[0] := false;
    MemData[0] := Chan3_Data[i];
  }
}


method n_SendGntSinv__29_0(Chan2_Cmd:array<MSG_CMD>,    Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<CurPtr.Length&&0<=j<CurPtr.Length==>CurPtr[i]!=CurPtr[j]
requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<MemData.Length&&0<=j<MemData.Length==>MemData[i]!=MemData[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
//1
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqS) && (CurPtr[0] == i) && (ExGntd[0] == false)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies Chan2_Data
modifies CurCmd
modifies MemData
modifies ShrSet

{
  Chan2_Cmd[i] := GntS;
  Chan2_Data[i] := MemData[0];
  ShrSet[i] := true;
  CurCmd[0] := Empty;
}

method n_SendGntSinv__29_1(Chan2_Cmd:array<MSG_CMD>,    Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<CurPtr.Length&&0<=j<CurPtr.Length==>CurPtr[i]!=CurPtr[j]
requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<MemData.Length&&0<=j<MemData.Length==>MemData[i]!=MemData[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqS) && (CurPtr[0] == i) && (ExGntd[0] == false)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies Chan2_Data
modifies CurCmd
modifies MemData
modifies ShrSet

{
  Chan2_Cmd[i] := GntS;
  Chan2_Data[i] := MemData[0];
  ShrSet[i] := true;
  CurCmd[0] := Empty;
}


method n_SendGntEinv__29_0(Chan2_Cmd:array<MSG_CMD>,    Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,   
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0



requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<CurPtr.Length&&0<=j<CurPtr.Length==>CurPtr[i]!=CurPtr[j]
requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<MemData.Length&&0<=j<MemData.Length==>MemData[i]!=MemData[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]



requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
//1
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqE) && (CurPtr[0] == i) && (ExGntd[0] == false) && (forall j  |0<= j<N0 :: (ShrSet[j] == false) )) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies Chan2_Data
modifies CurCmd
modifies ExGntd
modifies MemData
modifies ShrSet

{
  Chan2_Cmd[i] := GntE;
  Chan2_Data[i] := MemData[0];
  ShrSet[i] := true;
  ExGntd[0] := true;
  CurCmd[0] := Empty;
}

method n_SendGntEinv__29_1(Chan2_Cmd:array<MSG_CMD>,    Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,   
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan2_Cmd.Length==N0



requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0



requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]



requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<CurPtr.Length&&0<=j<CurPtr.Length==>CurPtr[i]!=CurPtr[j]
requires forall i,j::0<=i<ExGntd.Length&&0<=j<ExGntd.Length==>ExGntd[i]!=ExGntd[j]
requires forall i,j::0<=i<MemData.Length&&0<=j<MemData.Length==>MemData[i]!=MemData[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]



requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqE) && (CurPtr[0] == i) && (ExGntd[0] == false) && (forall j  |0<= j<N0 :: (ShrSet[j] == false) )) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan2_Cmd
modifies Chan2_Data
modifies CurCmd
modifies ExGntd
modifies MemData
modifies ShrSet

{
  Chan2_Cmd[i] := GntE;
  Chan2_Data[i] := MemData[0];
  ShrSet[i] := true;
  ExGntd[0] := true;
  CurCmd[0] := Empty;
}


method n_RecvGntSinv__29_0(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_Data.Length==N0


requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]


requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
//1
requires (Chan2_Cmd[i] == GntS) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data

{
  Cache_State[i] := S;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}

method n_RecvGntSinv__29_1(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_Data.Length==N0


requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]


requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires (Chan2_Cmd[i] == GntS) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data

{
  Cache_State[i] := S;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}


method n_RecvGntEinv__29_0(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_Data.Length==N0


requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]


requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i==p__Inv2
//1
requires (Chan2_Cmd[i] == GntE) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data

{
  Cache_State[i] := E;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}

method n_RecvGntEinv__29_1(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>, ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_Data.Length==N0


requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]


requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<Chan2_Data.Length&&0<=j<Chan2_Data.Length==>Chan2_Data[i]!=Chan2_Data[j]
requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires i!=p__Inv2
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//2
requires (Chan2_Cmd[i] == GntE) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data

{
  Cache_State[i] := E;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}


method n_SendReqE__part__1inv__29_0(Cache_State:array<CACHE_STATE>,   Chan1_Cmd:array<MSG_CMD>, Chan2_Cmd:array<MSG_CMD>,  ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_State.Length==N0


requires Chan1_Cmd.Length==N0
requires Chan2_Cmd.Length==N0

requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]


requires forall i,j::0<=i<Chan1_Cmd.Length&&0<=j<Chan1_Cmd.Length==>Chan1_Cmd[i]!=Chan1_Cmd[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//statement has nothing with prop--it guranttee itself

requires ((Chan1_Cmd[i] == Empty) && (Cache_State[i] == S)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan1_Cmd

{
  Chan1_Cmd[i] := ReqE;
}


method n_Storeinv__29_0(AuxData:array<DATA>,   Cache_Data:array<DATA>,  Cache_State:array<CACHE_STATE>, Chan2_Cmd:array<MSG_CMD>,  ShrSet:array<boolean>,
N0:nat,i:nat,d:nat,N1:nat,
p__Inv2:nat)
requires N0>0
requires N1>0

requires AuxData.Length==N0


requires Cache_Data.Length==N0

requires Cache_State.Length==N0
requires Chan2_Cmd.Length==N0

requires ShrSet.Length==N0
requires forall i,j::0<=i<AuxData.Length&&0<=j<AuxData.Length==>AuxData[i]!=AuxData[j]


requires forall i,j::0<=i<Cache_Data.Length&&0<=j<Cache_Data.Length==>Cache_Data[i]!=Cache_Data[j]

requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires 0<=d<N1
requires  p__Inv2<N0
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//statement has nothing with prop--it guranttee itself

requires (Cache_State[i] == E) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies AuxData
modifies Cache_Data

{
  Cache_Data[i] := d;
  AuxData[0] := d;
}


method n_RecvReqEinv__29_0(Chan1_Cmd:array<MSG_CMD>,   Chan2_Cmd:array<MSG_CMD>,  CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, InvSet:array<boolean>,  ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan1_Cmd.Length==N0


requires Chan2_Cmd.Length==N0

requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires InvSet.Length==N0

requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan1_Cmd.Length&&0<=j<Chan1_Cmd.Length==>Chan1_Cmd[i]!=Chan1_Cmd[j]


requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<CurPtr.Length&&0<=j<CurPtr.Length==>CurPtr[i]!=CurPtr[j]
requires forall i,j::0<=i<InvSet.Length&&0<=j<InvSet.Length==>InvSet[i]!=InvSet[j]

requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//statement has nothing with prop--it guranttee itself

requires ((Chan1_Cmd[i] == ReqE) && (CurCmd[0] == Empty)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan1_Cmd
modifies CurCmd
modifies CurPtr
modifies InvSet
modifies ShrSet

{
  CurCmd[0] := ReqE;
  CurPtr[0] := i;
  Chan1_Cmd[i] := Empty;
  var j:=0;
  while(j<N0)
    decreases N0-j
 {
    InvSet[j] := ShrSet[j];
  
 j:=j+1;
}
}


method n_SendReqE__part__0inv__29_0(Cache_State:array<CACHE_STATE>,   Chan1_Cmd:array<MSG_CMD>, Chan2_Cmd:array<MSG_CMD>,  ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_State.Length==N0


requires Chan1_Cmd.Length==N0
requires Chan2_Cmd.Length==N0

requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]


requires forall i,j::0<=i<Chan1_Cmd.Length&&0<=j<Chan1_Cmd.Length==>Chan1_Cmd[i]!=Chan1_Cmd[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//statement has nothing with prop--it guranttee itself

requires ((Chan1_Cmd[i] == Empty) && (Cache_State[i] == I)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan1_Cmd

{
  Chan1_Cmd[i] := ReqE;
}


method n_SendReqSinv__29_0(Cache_State:array<CACHE_STATE>,   Chan1_Cmd:array<MSG_CMD>, Chan2_Cmd:array<MSG_CMD>,  ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Cache_State.Length==N0


requires Chan1_Cmd.Length==N0
requires Chan2_Cmd.Length==N0

requires ShrSet.Length==N0
requires forall i,j::0<=i<Cache_State.Length&&0<=j<Cache_State.Length==>Cache_State[i]!=Cache_State[j]


requires forall i,j::0<=i<Chan1_Cmd.Length&&0<=j<Chan1_Cmd.Length==>Chan1_Cmd[i]!=Chan1_Cmd[j]
requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//statement has nothing with prop--it guranttee itself

requires ((Cache_State[i] == I) && (Chan1_Cmd[i] == Empty)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan1_Cmd

{
  Chan1_Cmd[i] := ReqS;
}


method n_RecvReqSinv__29_0(Chan1_Cmd:array<MSG_CMD>,   Chan2_Cmd:array<MSG_CMD>,  CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, InvSet:array<boolean>,  ShrSet:array<boolean>,
N0:nat,i:nat,
p__Inv2:nat)
requires N0>0

requires Chan1_Cmd.Length==N0


requires Chan2_Cmd.Length==N0

requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires InvSet.Length==N0

requires ShrSet.Length==N0
requires forall i,j::0<=i<Chan1_Cmd.Length&&0<=j<Chan1_Cmd.Length==>Chan1_Cmd[i]!=Chan1_Cmd[j]


requires forall i,j::0<=i<Chan2_Cmd.Length&&0<=j<Chan2_Cmd.Length==>Chan2_Cmd[i]!=Chan2_Cmd[j]

requires forall i,j::0<=i<CurCmd.Length&&0<=j<CurCmd.Length==>CurCmd[i]!=CurCmd[j]

requires forall i,j::0<=i<CurPtr.Length&&0<=j<CurPtr.Length==>CurPtr[i]!=CurPtr[j]
requires forall i,j::0<=i<InvSet.Length&&0<=j<InvSet.Length==>InvSet[i]!=InvSet[j]

requires forall i,j::0<=i<ShrSet.Length&&0<=j<ShrSet.Length==>ShrSet[i]!=ShrSet[j]
requires 0<=i<N0
requires  p__Inv2<N0
requires (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))//statement has nothing with prop--it guranttee itself

requires ((Chan1_Cmd[i] == ReqS) && (CurCmd[0] == Empty)) //guard condition
ensures   (!((Chan2_Cmd[p__Inv2] == Inv) && (ShrSet[p__Inv2] == false)))
modifies Chan1_Cmd
modifies CurCmd
modifies CurPtr
modifies InvSet
modifies ShrSet

{
  CurCmd[0] := ReqS;
  CurPtr[0] := i;
  Chan1_Cmd[i] := Empty;
  var j:=0;
  while(j<N0)
    decreases N0-j
 {
    InvSet[j] := ShrSet[j];
  
 j:=j+1;
}
}


