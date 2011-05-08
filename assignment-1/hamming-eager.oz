/* Check if a given K does not divide a given N */
declare
fun {NotDivides K N}
   {Not (N mod K == 0)}
end

/* Generate the first N primes */
declare
fun {Primes N}
   fun {NextPrimes Ps X N}
      if N == 0 then Ps
      elseif {All Ps fun {$ Y} {NotDivides Y X} end} then
	 {NextPrimes (X|Ps) (X+1) (N-1)}
      else {NextPrimes Ps (X+1) N}
      end
   end
in
   1|{Reverse {NextPrimes [2] 3 N}}
end

/* Generates the first N hamming numbers */
declare
fun {Hamming Ps N}
   fun {NextHamming X N}
      if N==0 then nil
      elseif {All Ps fun {$ Y} {NotDivides Y X} end} then
	 X|{NextHamming (X+1) (N-1)}
      else {NextHamming (X+1) N}
      end
   end
in
   1|{NextHamming 2 N}
end

local Ps in
   Ps={List.drop {Primes 200} 4}
   {Browse {List.take Ps 20}}
   {Browse {Hamming Ps 20}}
end