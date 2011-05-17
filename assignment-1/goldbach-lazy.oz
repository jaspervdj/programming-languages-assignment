functor
import
   Application
   System
define
   fun lazy {IsPrime N}
      fun lazy {IsPrimeIter X}
         if X*X>N then true
         elseif N mod X == 0 then false
         else {IsPrimeIter X+1}
         end
      end
   in
      if N==1 then true
      else {IsPrimeIter 2}
      end
   end

   fun lazy {Goldbach N}
      fun lazy {GoldbachIter X}
         if X>(N div 2) then nil
         elseif {And {IsPrime X} {IsPrime N-X}} then X#N-X|{GoldbachIter X+2}
         else {GoldbachIter X+2}
         end
      end
   in
      {GoldbachIter 1}
   end

   local N Ps in
      N|_={Application.getArgs plain}
      Ps={Goldbach {StringToInt N}}
      {ForAll Ps System.show}
      {Application.exit 0}
   end
end
