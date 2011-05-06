{Show 'Hello World'}
{Show 'Hi thar'}

declare
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
      if N < 4 then {Append {Repeat N X} {Encode Xrr}}
      else &-|{EncodeFactor N}|X|{Encode Xrr}
      end
   end
end

declare
fun {Repeat N X}
   if N==0 then nil
   else X|{Repeat (N - 1) X}
   end
end

declare
fun {EncodeFactor X}
   X + &A - 1
end

declare
fun {DecodeFactor X}
   X - &A + 1
end

declare
fun {Decode Xs}
   case Xs
   of nil then nil
   [] &-|N|X|Xr then Prefix in
      Prefix={Repeat {DecodeFactor N} X}
      {Append Prefix {Decode Xr}}
   [] X|Xr then X|{Decode Xr}
   end
end

local X Y in
   X={StringToAtom {Encode "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBCJ"}}
   Y={StringToAtom {Decode {AtomToString X}}}
   {Browse X}
   {Browse Y}
end