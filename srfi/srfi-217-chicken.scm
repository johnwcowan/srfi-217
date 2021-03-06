;;; SRFI 217 module for CHICKEN 5.

(module (srfi 217)
  (iset list->iset
   list->iset!
   iset-unfold make-range-iset
   iset-member
   iset-min iset-max
   iset? iset-contains?
   iset-empty? iset-disjoint?
   iset-adjoin iset-adjoin! iset-delete iset-delete! iset-delete-all
   iset-delete-all!
   iset-search
   iset-search!
   iset-size
   iset-any? iset-every?
   iset-count iset-fold
   iset-map iset-for-each
   iset-filter iset-remove
   iset-partition iset-partition!
   iset-copy
   iset->list
   iset=?
   iset<? iset>? iset<=? iset>=?
   iset-union iset-union!
   iset-intersection iset-intersection!
   iset-difference iset-difference!
   iset-xor iset-xor!
   iset-open-interval iset-closed-interval iset-open-closed-interval
   iset-closed-open-interval isubset= isubset< isubset<=
   isubset> isubset>=
   )

  (import scheme
          (chicken base)
          (only (srfi 1) fold every)
          (srfi 143)
          (srfi 145))

  ;; R7RS shim
  (define exact inexact->exact)

  (include "trie.scm")
  (include "217.scm"))
