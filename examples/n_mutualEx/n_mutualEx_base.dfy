//(*  Title:      HOL/Auth/n_mutualEx_base.dfy
 //   Author:     Yongjian Li and Kaiqiang Duan, State Key Lab of Computer Science, Institute of Software, Chinese Academy of Sciences
 //   Copyright    2016 State Key Lab of Computer Science, Institute of Software, Chinese Academy of Sciences
//*)

//header{*The n_mutualEx Protocol Case Study*} 

//theory n_mutualEx_base imports paraTheory
//begin

//section{*Main definitions of dafny  file*}

//subsection{* Definitions of Constants*}

datatype state = I| T| C| E
type client=nat
type boolean=bool

