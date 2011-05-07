functor
import
   Application
   System
   OS
   File
define
   fun {Prepend N X Xr}
      if N==0 then Xr
      else {Prepend (N - 1) X X|Xr}
      end
   end
   
   fun {EncodeFactor X}
      X + &A - 1
   end
   
   fun {Encode Xs}
      fun {TakePrefix X N Ys}
         case Ys
         of nil then N#nil
         [] Y|Yr then
   	 if {And (X == Y) (N < 26)} then {TakePrefix X (N + 1) Yr}
   	 else N#Ys
   	 end
         end
      end
   in
      case Xs
      of nil then nil
      [] X|Xr then N Xrr in
         N#Xrr={TakePrefix X 1 Xr}
         if N < 4 then {Prepend N X {Encode Xrr}}
         else &-|{EncodeFactor N}|X|{Encode Xrr}
         end
      end
   end
   
   
   fun {DecodeFactor X}
      X - &A + 1
   end
   
   fun {Decode Xs}
      case Xs
      of nil then nil
      [] &-|N|X|Xr then {Prepend {DecodeFactor N} X {Decode Xr}}
      [] X|Xr then X|{Decode Xr}
      end
   end
   
   local Mode F Stdin Input Output in
      /* Get CLI args */
      Mode|_={Application.getArgs plain}

      /* Check the mode */
      if Mode == "encode" then F=Encode
      else F=Decode
      end

      /* Read stdin */
      {File.readOpen stdin}
      {File.read Stdin all Input _ _}
      
      /* Do actual work */
      Output={F Input}

      /* Back to the real world */
      {System.show Output}
      {Application.exit 0}
   end
end
