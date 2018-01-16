;; Chapter 1 - Toys

;; Is it true that this is an atom?
(quote atom) 
'atom 
;; Yes, because atom is a string of characters beginning with the letter a.

;; Is it true that this is an atom?
(quote turkey)
'turkey
;; Yes, because turkey is a string of characters beginning with a letter.

;; Is it true that this is an atom?
1492
;; Yes, because 1492 is a string of digits.

;; Is it true that this is an atom?
(quote u) 
'u
;; Yes, because u is a string of one character, which is a letter

;; Is it true that this is an atom?
(quote *abc$)
'*abc$
;; Yes, because *abc$ is a string of characters beginning with a letter
;; or special character other than a left parentheses or right parentheses.

;; Is it true that this is a list?
(quote (atom)) 
'(atom) 
;; Yes, because (atom) is an atom enclosed by parentheses.

;; Is it true that this is a list?
'(atom turkey or)
;; Yes, because is is a collection of attomes enclosed by parentheses.

;; Is it true that this is a list?
'(atom turkey) or
;; No, because these are two S-expressions not enclosed by parentheses.
;; The first one is a list containing two atoms, and the second is an atom.

;; Is it true that this is a list?
'((atom turkey) or)
;; Yes, because the two S-expressions are now enclosed by parentheses.

;; Is it true that this is an S-expression?
'xyz
;; Yes, because atoms are S-expressions.

;; Is it true that this is an S-expression?
'(x y z)
;; Yes, because it is a list.

;; Is it true that this is an S-expression?
'((x y) z)
;; Yes, because all lists are S-expressions.

;; Is it true that this is a list?
'(how are you doing so far)
;; Yes, because it is a collection of S-expressions enclosed by parentheses.

;; How many S-expressions are in the list below, and what are they? 
'(how are you doing so far)
;; Six: 'how', 'are', 'you', 'doing', 'so', and 'far'.

;; Is it true that this is a list?
'(((how) are) ((you) (doing so)) far)
;; Yes, because it is a collection of S-expressions enclosed by parentheses.

;; How many S-expressions are in the list below, and what are they?
'(((how) are) ((you) (doing so)) far)
;; Three, '((how) are)', '((you) (doing so))', and 'far.

;; Is it true that this is a list?
'()
;;Yes, because it contains zero S-expressions enclosed by parentheses. This
;; special S-expression is called the null (or empty) list.

;; Is it true that this is an atom?
'()
;; No, () is is just a list.

;; Is it true that this is a list?
'(() () () ())
;; Yes, because it is a collection of S-expressions enclosed by parentheses.

;; What is the car of l where l is the arguement (a b c)?
(car '(a b c)) 
;; 'a', because 'a' is the first atom of this list.

;; What is the car of l where l is ((a b c) x y z)?
(car '((a b c) x y z))  
;; (a b c), because (a b c) is the first S-expression of this non-empty list.

;; What is the car of l where l is 'hotdog?
(car 'hotdog) 
;; No answer. You cannot ask for the car of an atom.

;; What is the car of '()?
(car '()) 
;; No answer. You cannot ask for the car of an empty list.

;; THE LAW OF THE CAR
;; The primative car is defined only for non-empty lists.

;; What is the car of (((hotdogs)) (and) (pickle) relish)?
(car '(((hotdogs)) (and) (pickle) relish)) 
;; ((hotdogs)), read as: "The list of the list of hotdogs." ((hotdogs)) is the
;; first S-expression.

;; What is (car l) where l is (((hotdogs)) (and) (pickle) relish)?
;; ((hotdogs)), because (car l) is another way to ask for "the car of the list l."

;; What is (car (car l)), where l is (((hotdogs)) (and))?
;; (hotdogs).
