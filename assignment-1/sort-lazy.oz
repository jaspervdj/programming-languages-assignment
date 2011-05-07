functor
import
   Application
   System
   OS
define
   /* Generate a random list with N elements */
   fun lazy {RandomList N}
      if N==0 then nil
      else {OS.rand}|{RandomList (N-1)}
      end
   end

   /* QuickSort algorithm */
   fun lazy {QuickSort Xs}
      case Xs
      of nil then nil
      [] X|Xr then Smaller Larger in
         Smaller={Filter Xr fun {$ Y} Y=<X end}
         Larger={Filter Xr fun {$ Y} Y>X end}
         {Append {QuickSort Smaller} X|{QuickSort Larger}}
      end
   end
   
   local N List in
      /* Initialize random generator */
      {OS.srand {OS.time}}

      /* The length of the list is given by the first command line argument */
      N|_={Application.getArgs plain}
      List={RandomList {StringToInt N}}

      /* Sort and show the list, then exit */
      {ForAll {QuickSort List} System.show}
      {Application.exit 0}
   end
end
