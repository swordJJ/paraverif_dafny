(*  Title:      HOL/Auth/n_germanSimp_lemma_on_inv__9.thy
    Author:     Yongjian Li and Kaiqiang Duan, State Key Lab of Computer Science, Institute of Software, Chinese Academy of Sciences
    Copyright    2016 State Key Lab of Computer Science, Institute of Software, Chinese Academy of Sciences
*)

header{*The n_germanSimp Protocol Case Study*} 

theory n_germanSimp_lemma_on_inv__9 imports n_germanSimp_base
begin
section{*All lemmas on causal relation between inv__9 and some rule r*}
lemma n_StoreVsinv__9:
assumes a1: "(\<exists> i d. i\<le>N\<and>d\<le>N\<and>r=n_Store  i d)" and
a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
shows "invHoldForRule s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain i d where a1:"i\<le>N\<and>d\<le>N\<and>r=n_Store  i d" apply fastforce done
from a2 obtain p__Inv4 where a2:"p__Inv4\<le>N\<and>f=inv__9  p__Inv4" apply fastforce done
have "(i=p__Inv4)\<or>(i~=p__Inv4)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(i=p__Inv4)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const E)) (eqn (IVar (Field (Para (Ident ''Chan3'') p__Inv4) ''Cmd'')) (Const InvAck))))" in exI, auto) done
  then have "invHoldForRule s f r (invariants N)" by auto
}
moreover {
  assume b1: "(i~=p__Inv4)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Para (Ident ''Cache'') i) ''State'')) (Const E)) (eqn (IVar (Field (Para (Ident ''Chan3'') p__Inv4) ''Cmd'')) (Const InvAck))))" in exI, auto) done
  then have "invHoldForRule s f r (invariants N)" by auto
}
ultimately show "invHoldForRule s f r (invariants N)" by satx
qed

lemma n_SendInvAckVsinv__9:
assumes a1: "(\<exists> i. i\<le>N\<and>r=n_SendInvAck  i)" and
a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
shows "invHoldForRule s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain i where a1:"i\<le>N\<and>r=n_SendInvAck  i" apply fastforce done
from a2 obtain p__Inv4 where a2:"p__Inv4\<le>N\<and>f=inv__9  p__Inv4" apply fastforce done
have "(i=p__Inv4)\<or>(i~=p__Inv4)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(i=p__Inv4)"
  have "((formEval (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const E)) s))\<or>((formEval (neg (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const E))) s))" by auto
  moreover {
    assume c1: "((formEval (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const E)) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (neg (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const I))) (neg (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''Data'')) (IVar (Ident ''AuxData''))))))" in exI, auto) done
    then have "invHoldForRule s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (neg (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const E))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Ident ''ExGntd'')) (Const true)) (neg (eqn (IVar (Field (Para (Ident ''Cache'') p__Inv4) ''State'')) (Const E)))) (eqn (IVar (Field (Para (Ident ''Chan2'') p__Inv4) ''Cmd'')) (Const Inv))))" in exI, auto) done
    then have "invHoldForRule s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule s f r (invariants N)" by satx
}
moreover {
  assume b1: "(i~=p__Inv4)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule s f r (invariants N)" by auto
}
ultimately show "invHoldForRule s f r (invariants N)" by satx
qed

lemma n_RecvInvAckVsinv__9:
assumes a1: "(\<exists> i. i\<le>N\<and>r=n_RecvInvAck  i)" and
a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
shows "invHoldForRule s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain i where a1:"i\<le>N\<and>r=n_RecvInvAck  i" apply fastforce done
from a2 obtain p__Inv4 where a2:"p__Inv4\<le>N\<and>f=inv__9  p__Inv4" apply fastforce done
have "(i=p__Inv4)\<or>(i~=p__Inv4)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(i=p__Inv4)"
  have "((formEval (eqn (IVar (Ident ''ExGntd'')) (Const true)) s))\<or>((formEval (neg (eqn (IVar (Ident ''ExGntd'')) (Const true))) s))" by auto
  moreover {
    assume c1: "((formEval (eqn (IVar (Ident ''ExGntd'')) (Const true)) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (neg (eqn (IVar (Ident ''ExGntd'')) (Const true))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule s f r (invariants N)" by satx
}
moreover {
  assume b1: "(i~=p__Inv4)"
  have "((formEval (eqn (IVar (Ident ''ExGntd'')) (Const true)) s))\<or>((formEval (neg (eqn (IVar (Ident ''ExGntd'')) (Const true))) s))" by auto
  moreover {
    assume c1: "((formEval (eqn (IVar (Ident ''ExGntd'')) (Const true)) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (neg (eqn (IVar (Ident ''ExGntd'')) (Const true))) s))"
    have "?P2 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule s f r (invariants N)" by satx
}
ultimately show "invHoldForRule s f r (invariants N)" by satx
qed

lemma n_SendGntEVsinv__9:
assumes a1: "(\<exists> i. i\<le>N\<and>r=n_SendGntE N i)" and
a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
shows "invHoldForRule s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain i where a1:"i\<le>N\<and>r=n_SendGntE N i" apply fastforce done
from a2 obtain p__Inv4 where a2:"p__Inv4\<le>N\<and>f=inv__9  p__Inv4" apply fastforce done
have "(i=p__Inv4)\<or>(i~=p__Inv4)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(i=p__Inv4)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Para (Ident ''Chan3'') p__Inv4) ''Cmd'')) (Const InvAck)) (eqn (IVar (Para (Ident ''ShrSet'') p__Inv4)) (Const false))))" in exI, auto) done
  then have "invHoldForRule s f r (invariants N)" by auto
}
moreover {
  assume b1: "(i~=p__Inv4)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Para (Ident ''Chan3'') p__Inv4) ''Cmd'')) (Const InvAck)) (eqn (IVar (Para (Ident ''ShrSet'') p__Inv4)) (Const false))))" in exI, auto) done
  then have "invHoldForRule s f r (invariants N)" by auto
}
ultimately show "invHoldForRule s f r (invariants N)" by satx
qed

lemma n_RecvGntSVsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_RecvGntS  i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_SendGntSVsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_SendGntS  i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_RecvReqE__part__0Vsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_RecvReqE__part__0 N i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_RecvGntEVsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_RecvGntE  i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_SendInv__part__0Vsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_SendInv__part__0  i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_SendInv__part__1Vsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_SendInv__part__1  i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_RecvReqE__part__1Vsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_RecvReqE__part__1 N i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_RecvReqSVsinv__9:
  assumes a1: "\<exists> i. i\<le>N\<and>r=n_RecvReqS N i" and
  a2: "(\<exists> p__Inv4. p__Inv4\<le>N\<and>f=inv__9  p__Inv4)"
  shows "invHoldForRule s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  
end
