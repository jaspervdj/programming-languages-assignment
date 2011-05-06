{Show 'Hello World'}
{Show 'Hi thar'}

declare
fun {Encode Xs}
    fun {EncodeIter X N Ys}
      case Ys
      of nil then (X#N)|nil
      [] Y|Yr then
         if X==Y then {EncodeIter X (N + 1) Yr}
         else (X#N)|{Encode Ys}
         end
      end
    end
in
   case Xs
   of nil then nil
   [] X|Xr then {EncodeIter X 1 Xr}
   end
end

declare
fun {Decode Xs}
   fun {DecodeIter X N Xr}
      if N==0 then {Decode Xr}
      else X|{DecodeIter X (N - 1) Xr}
      end
   end
in
   case Xs
   of nil then nil
   [] (X#N)|Xr then {DecodeIter X N Xr}
   end
end

local E D in
   E={Encode [3 3 3 4 6 2 100 100]}
   D={Decode E}
   {Browse E}
   {Browse D}
end