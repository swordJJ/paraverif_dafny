datatype CACHE_STATE = I| S| E
datatype MSG_CMD = Empty| ReqS| ReqE| Inv| InvAck| GntS| GntE
type NODE=nat
type DATA=nat
type boolean=bool

class  class_0  {
var 
Data : DATA,
Cmd : MSG_CMD
}


class  class_1  {
var 
Data : DATA,
State : CACHE_STATE
}

method n_SendInv__part__0inv__6_0(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   CurCmd:array<MSG_CMD>,  InvSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires CurCmd.Length==N0

requires InvSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && (CurCmd[0] == ReqE))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Chan2_Cmd
modifies InvSet
{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}

method n_SendInv__part__0inv__6_1(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   CurCmd:array<MSG_CMD>,  InvSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires CurCmd.Length==N0

requires InvSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
//1
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && (CurCmd[0] == ReqE))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Chan2_Cmd
modifies InvSet
{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}

method n_SendInv__part__0inv__6_2(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   CurCmd:array<MSG_CMD>,  InvSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires CurCmd.Length==N0

requires InvSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && (CurCmd[0] == ReqE))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Chan2_Cmd
modifies InvSet
{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}


method n_SendInv__part__1inv__6_0(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, InvSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires InvSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && ((CurCmd[0] == ReqS) && (ExGntd[0] == true)))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Chan2_Cmd
modifies InvSet
{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}

method n_SendInv__part__1inv__6_1(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, InvSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires InvSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
//1
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && ((CurCmd[0] == ReqS) && (ExGntd[0] == true)))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Chan2_Cmd
modifies InvSet
{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}

method n_SendInv__part__1inv__6_2(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, InvSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires InvSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (InvSet[i] == true) && ((CurCmd[0] == ReqS) && (ExGntd[0] == true)))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Chan2_Cmd
modifies InvSet
{
  Chan2_Cmd[i] := Inv;
  InvSet[i] := false;
}


method n_SendInvAckinv__6_0(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan3_Cmd:array<MSG_CMD>, Chan3_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan3_Cmd.Length==N0
requires Chan3_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
//1
//guard condition
requires ((Chan2_Cmd[i] == Inv) && (Chan3_Cmd[i] == Empty))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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

method n_SendInvAckinv__6_1(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan3_Cmd:array<MSG_CMD>, Chan3_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan3_Cmd.Length==N0
requires Chan3_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
//1
//guard condition
requires ((Chan2_Cmd[i] == Inv) && (Chan3_Cmd[i] == Empty))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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

method n_SendInvAckinv__6_2(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan3_Cmd:array<MSG_CMD>, Chan3_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan3_Cmd.Length==N0
requires Chan3_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Inv) && (Chan3_Cmd[i] == Empty))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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


method n_SendGntSinv__6_0(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqS) && (CurPtr[0] == i) && (ExGntd[0] == false))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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

method n_SendGntSinv__6_1(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
//1
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqS) && (CurPtr[0] == i) && (ExGntd[0] == false))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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

method n_SendGntSinv__6_2(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqS) && (CurPtr[0] == i) && (ExGntd[0] == false))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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


method n_SendGntEinv__6_0(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,     i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0





requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqE) && (CurPtr[0] == i) && (ExGntd[0] == false) && (forall j  |0<= j<N0 :: (ShrSet[j] == false) ))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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

method n_SendGntEinv__6_1(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,     i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0





requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
requires (!((!(Cache_State[p__Inv4] == I)) && (ShrSet[p__Inv4] == false)))//3
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqE) && (CurPtr[0] == i) && (ExGntd[0] == false) && (forall j  |0<= j<N0 :: (ShrSet[j] == false) ))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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

method n_SendGntEinv__6_2(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,   Chan2_Data:array<DATA>, CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,     i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0


requires Chan2_Data.Length==N0
requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0





requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires ((Chan2_Cmd[i] == Empty) && (CurCmd[0] == ReqE) && (CurPtr[0] == i) && (ExGntd[0] == false) && (forall j  |0<= j<N0 :: (ShrSet[j] == false) ))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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


method n_RecvGntSinv__6_0(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
requires (!((Chan2_Cmd[p__Inv4] == GntS) && (Chan2_Cmd[p__Inv3] == GntE)))//3
//guard condition
requires (Chan2_Cmd[i] == GntS)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data
{
  Cache_State[i] := S;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}

method n_RecvGntSinv__6_1(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
//1
//guard condition
requires (Chan2_Cmd[i] == GntS)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data
{
  Cache_State[i] := S;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}

method n_RecvGntSinv__6_2(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires (Chan2_Cmd[i] == GntS)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data
{
  Cache_State[i] := S;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}


method n_RecvGntEinv__6_0(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv4
requires (!((Chan2_Cmd[p__Inv3] == GntE) && (Chan2_Cmd[p__Inv4] == GntE)))//3
//guard condition
requires (Chan2_Cmd[i] == GntE)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data
{
  Cache_State[i] := E;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}

method n_RecvGntEinv__6_1(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i==p__Inv3
//1
//guard condition
requires (Chan2_Cmd[i] == GntE)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data
{
  Cache_State[i] := E;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}

method n_RecvGntEinv__6_2(Cache_Data:array<DATA>,   Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>,  Chan2_Data:array<DATA>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_Data.Length==N0


requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires Chan2_Data.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires i!=p__Inv3&&i!=p__Inv4
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//2
//guard condition
requires (Chan2_Cmd[i] == GntE)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies Cache_Data
modifies Cache_State
modifies Chan2_Cmd
modifies Chan2_Data
{
  Cache_State[i] := E;
  Cache_Data[i] := Chan2_Data[i];
  Chan2_Cmd[i] := Empty;
}


method n_Storeinv__6_0(AuxData:array<DATA>,   Cache_Data:array<DATA>,  Cache_State:array<CACHE_STATE>,  Chan2_Cmd:array<MSG_CMD>, i:nat, N0:nat,d:nat, N1:nat,p__Inv3:nat,p__Inv4:nat)

requires AuxData.Length==N0


requires Cache_Data.Length==N0

requires Cache_State.Length==N0

requires Chan2_Cmd.Length==N0

requires 0<= i<N0

requires 0<= d<N1

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//statement has nothing with prop--it guranttee itself

//guard condition
requires (Cache_State[i] == E)

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies AuxData
modifies Cache_Data
{
  Cache_Data[i] := d;
  AuxData[0] := d;
}


method n_RecvInvAckinv__6_0(Cache_State:array<CACHE_STATE>,   Chan2_Cmd:array<MSG_CMD>,  Chan3_Cmd:array<MSG_CMD>,  Chan3_Data:array<DATA>, CurCmd:array<MSG_CMD>,  ExGntd:array<boolean>, MemData:array<DATA>, ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0


requires Chan2_Cmd.Length==N0

requires Chan3_Cmd.Length==N0

requires Chan3_Data.Length==N0
requires CurCmd.Length==N0

requires ExGntd.Length==N0
requires MemData.Length==N0
requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//statement has nothing with prop--it guranttee itself

//guard condition
requires ((Chan3_Cmd[i] == InvAck) && (!(CurCmd[0] == Empty)))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
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


method n_RecvReqE__part__0inv__6_0(Cache_State:array<CACHE_STATE>,    Chan2_Cmd:array<MSG_CMD>,  CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, InvSet:array<boolean>,  ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0



requires Chan2_Cmd.Length==N0

requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires InvSet.Length==N0

requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//statement has nothing with prop--it guranttee itself

//guard condition
requires ((CurCmd[0] == Empty) && (Cache_State[i] == I))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies CurCmd
modifies CurPtr
modifies InvSet
modifies ShrSet
{
  CurCmd[0] := ReqE;
  CurPtr[0] := i;
  forall j  |0<= j<N0 {
    InvSet[j] := ShrSet[j];
  }
}


method n_RecvReqE__part__1inv__6_0(Cache_State:array<CACHE_STATE>,    Chan2_Cmd:array<MSG_CMD>,  CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, InvSet:array<boolean>,  ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0



requires Chan2_Cmd.Length==N0

requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires InvSet.Length==N0

requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//statement has nothing with prop--it guranttee itself

//guard condition
requires ((CurCmd[0] == Empty) && (Cache_State[i] == S))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies CurCmd
modifies CurPtr
modifies InvSet
modifies ShrSet
{
  CurCmd[0] := ReqE;
  CurPtr[0] := i;
  forall j  |0<= j<N0 {
    InvSet[j] := ShrSet[j];
  }
}


method n_RecvReqSinv__6_0(Cache_State:array<CACHE_STATE>,    Chan2_Cmd:array<MSG_CMD>,  CurCmd:array<MSG_CMD>,  CurPtr:array<NODE>, InvSet:array<boolean>,  ShrSet:array<boolean>,i:nat, N0:nat,p__Inv3:nat,p__Inv4:nat)

requires Cache_State.Length==N0



requires Chan2_Cmd.Length==N0

requires CurCmd.Length==N0

requires CurPtr.Length==N0
requires InvSet.Length==N0

requires ShrSet.Length==N0
requires 0<= i<N0

requires p__Inv3!=p__Inv4&&p__Inv4<N0&& p__Inv3<N0
requires (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))//statement has nothing with prop--it guranttee itself

//guard condition
requires ((Cache_State[i] == I) && (CurCmd[0] == Empty))

ensures   (!((!(Cache_State[p__Inv4] == I)) && (Chan2_Cmd[p__Inv3] == GntE)))
modifies CurCmd
modifies CurPtr
modifies InvSet
modifies ShrSet
{
  CurCmd[0] := ReqS;
  CurPtr[0] := i;
  forall j  |0<= j<N0 {
    InvSet[j] := ShrSet[j];
  }
}


