/* Check if a given K does not divide a given N */
declare
fun {NotDivides K N}
   {Not (N mod K == 0)}
end

/* Generate at least one prime that is larger or equal to N, and all primes
 * smaller than N. Ps is a reversed list of previously known primes, they
 * are not calculated again */
declare
fun {Primes Ps N}
   fun {PrimeIter Ps X}
      /* Is X a prime number? */
      if {All Ps fun {$ Y} {NotDivides Y X} end} then
	 /* We have a prime number, check if it is big enough */
	 if X>=N then X|Ps
	 /* Generate some more */					
	 else {PrimeIter X|Ps X+1}
	 end
      else {PrimeIter Ps X+1}
      end
   end
in
   local X in
      X|_=Ps
      {PrimeIter Ps X+1}
   end
end

/* Generates the first N hamming numbers */
declare
fun {Hamming N}
   fun {Check Y X}
      if Y>5 then {NotDivides Y X}
      else true
      end
   end
   fun {NextHamming P|Pr X N}
      /* Need more primes */
      if P<N then {NextHamming {Primes P|Pr N} X N}
      else
         if N==0 then nil
         elseif {All P|Pr fun {$ Y} {Check Y X} end} then
	    X|{NextHamming P|Pr (X+1) (N-1)}
	 else {NextHamming P|Pr (X+1) N}
	 end
      end
   end
in
   1|{NextHamming {Primes [2] 10} 2 N}
end

{Browse {Hamming 200}}


/*
local Xs Ys in
   Xs={PrimesUpTo [5 3 2] 20}
   Ys={PrimesUpTo Xs 40}
   {Browse Ys}
end
*/