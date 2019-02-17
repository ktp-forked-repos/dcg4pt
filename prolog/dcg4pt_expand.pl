:- module(dcg4pt_expand, []).
:- reexport(library(dcg4pt)).

:- op(1200, xfx, ==>).

user:term_expansion(X1 ==> Y1, [Rule]) :-
   dcg4pt:edcg_rule_to_dcg_rule(X1 ==> Y1, X2 --> Y2),
   expand_term(X2 --> Y2, Rule).