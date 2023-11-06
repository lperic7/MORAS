Set Implicit Arguments.
Require Import Setoid.
Require Import List.
Import ListNotations.
Import Bool.

Notation "! X" := (negb X) (at level 7).


Goal forall X Y:bool,(X && !Y) || (!X && !Y) || (!X && Y) = !(X && Y).
Proof.
  intros. destruct X, Y; simpl; reflexivity.
Qed.


Goal forall X Y Z:bool, !(!X && Y && Z) && !(X && Y && !Z) && (X && !Y && Z) = X && !Y && Z.
Proof.
  intros. destruct X, Y, Z; simpl; reflexivity.
Qed.