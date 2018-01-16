; Chapter 1 - Toys

; Atom examples
(quote atom) 
'atom 
'turkey
1492
'u
(quote *abc$)
'*abc$

; List and S-expression examples
(quote (atom)) 
'(atom) 
'(atom turkey or) ; List of atoms

; Not a list! Two S-expressions not enclosed by parentheses
'(atom turkey) or

; Lists and S-expressions
'((atom turkey) or) ; the two S-expressions are now enclosed by parentheses.
'xyz ; This is an S-expression because atoms are S-expressions.

'(x y z) ; This is an S-expression because lists are S-expressions.
'((x y) z)
'(how are you doing so far)

; How many S-expressions are in the list below, and what are they? 
'(how are you doing so far) ; Six: 'how', 'are', 'you', 'doing', 'so', and 'far'.

'(((how) are) ((you) (doing so)) far) ; This is a list because it is a collection of S-expressions enclosed by parentheses.

'(((how) are) ((you) (doing so)) far) ; Three S-expressions are in this list. They are '((how) are)', '((you) (doing so))', and 'far.

'() ; This is a list, because it contains zero S-expressions enclosed by parentheses. This
; special S-expression is called the null (or empty) list.

'() ; This is not an atom. () is is just a list.

; Is it true that this is a list?
'(() () () ())
; Yes, because it is a collection of S-expressions enclosed by parentheses.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; THE LAW OF THE CAR
; The primative car is defined only for non-empty lists.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; car examples

; What is the car of l where l is the arguement (a b c)?
(car '(a b c)) 
; 'a', because 'a' is the first atom of this list.

; What is the car of l where l is ((a b c) x y z)?
(car '((a b c) x y z))  
; (a b c), because (a b c) is the first S-expression of this non-empty list.

; What is the car of l where l is 'hotdog?
(car 'hotdog) 
; No answer. You cannot ask for the car of an atom.

; What is the car of '()?
(car '()) 
; No answer. You cannot ask for the car of an empty list.

; What is the car of (((hotdogs)) (and) (pickle) relish)?
(car '(((hotdogs)) (and) (pickle) relish)) 
; ((hotdogs)), read as: "The list of the list of hotdogs." ((hotdogs)) is the
; first S-expression.

; What is (car l) where l is (((hotdogs)) (and) (pickle) relish)?
(car '(((hotdogs)) (and) (pickle) relish)) ; '((hotdogs)), because (car l) is another way to ask for "the car of the list l."

; What is (car (car l)), where l is (((hotdogs)) (and))?
(car (car '(((hotdogs)) (and)))) ; '(hotdogs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; The Law of cdr
; The primative cdr is defined only for non-empty lists.
; The cdr of any non-empty list is always another list.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; cdr examples
; Note: "cdr" is pronounced "could-er"

; What is the cdr of l where l is (a b c)
(cdr '(a b c)) ; '(b c), because '(b c) is the list l without (car l).

; What is the cdr of l where l is ((abc) x y z)?
(cdr '((abc) x y z)) ; '(x y z)

; What is the cdr of l where l is (hamburger)?
(cdr '(hamburger)) ; '()

; What is (cdr l) where l is ((x) t r)?
(cdr '((x) t r)) ; '(t r)

; What is (cdr a) where a is hotdogs?
(cdr 'hotdogs) ; No answer, we cannot ask for the cdr of an atom. 

; What is (cdr l) where l is ()?
(cdr '()) ; No answer, we cannot ask for the cdr of the null list. 

; What is (car (cdr l)) where l is ((b) (x y) ((c)))
(car (cdr '((b) (x y) ((c))))) ; '(x y). (cdr '((b) (x y) ((c)))) is ((x y) ((c))) and (car '((x y) ((c)))) is (x y) 

; What is (cdr (cdr l)) where l is ((b) (x y) ((c)))?
(cdr (cdr '((b) (x y) ((c))))) ; '(((c)))

; What is (cdr (car l)) where l is '(a (b (c)) d)
(cdr (car '(a (b (c)) d))) ; No answer. cannot take cdr of an atom, which is a in this case.

; What is the cons of the atom a and the list l where a is 'peanut and l is '(butter and jelly)?
; This can be written "(cons a l)". Read: "cons the atom a onto the list l."
(cons 'peanut '(butter and jelly)) ; '(peanut butter and jelly)

; What is the cons of s and l where s is '(banana and) l is '(peanut butter and jelly)
(cons '(banana and) '(peanut butter and jelly)) ; '(banana and peanut butter and jelly) 

; What is (cons s l) where s is '((help) this) and l is '(is very ((hard) to learn))
(cons '((help) this) '(is very ((hard) to learn))) ; (((help) this) is very ((hard) to learn))
