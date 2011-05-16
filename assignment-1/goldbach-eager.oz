functor
import
   Application
   System
define
   fun {IsPrime N}
      fun {IsPrimeIter X}
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

   fun {Goldbach N}
      fun {GoldbachIter X}
         if X>(N div 2) then nil
         elseif {And {IsPrime X} {IsPrime N-X}} then X#N-X
         else {GoldbachIter X+2}
         end
      end
   in
      {GoldbachIter 1}
   end

   local N X Y in
      N|_={Application.getArgs plain}
      X#Y={Goldbach {StringToInt N}}
      {System.show X}
      {System.show Y}
      {Application.exit 0}
   end
end
