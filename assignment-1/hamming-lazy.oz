functor
import
   Application
   System
define
   fun lazy {LMerge Xs Ys}
      case Xs#Ys
      of nil#_ then Ys
      [] _#nil then Xs
      [] (X|Xr)#(Y|Yr) then
         if X<Y then X|{LMerge Xr Ys}
         elseif X>Y then Y|{LMerge Xs Yr}
         else X|{LMerge Xr Yr}
         end
      end
   end

   fun lazy {LMap Xs F}
      case Xs
      of nil then nil
      [] X|Xr then {F X}|{LMap Xr F}
      end
   end

   fun lazy {LHamming}
      fun lazy {LMul N}
         {LMap {LHamming} fun {$ X} X*N end}
      end
   in
      1|{LMerge {LMul 2} {LMerge {LMul 3} {LMul 5}}}
   end

   local N in
      N|_={Application.getArgs plain}
      {ForAll {List.take {LHamming} {StringToInt N}} System.show}
      {Application.exit 0}
   end
end